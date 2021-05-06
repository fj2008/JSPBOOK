package login.cookie;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/cookie/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userID = "user";//회원가입 되어 있는 사용자의 아이디
		
		String userPW = "pw";//회원가입 되어 있는 사용자의 비번
		
		String userNickname = "사용자";//회원가입 되어 있는 사용자의 닉네임
		
		String id = request.getParameter("id");//사용자가 전달한 id
		
		String pw = request.getParameter("pw");//사용자가 전달한 pw
		
		String nickName = request.getParameter("NickName");
		
		if(id.equals(userID) && pw.equals(userPW)){
			Cookie cookie_id = new Cookie("ID",id);
			Cookie cookie_pw = new Cookie("PW",pw);
			Cookie cookie_nickName = new Cookie("NickName",userNickname);
			
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			response.addCookie(cookie_nickName);
			response.setStatus(200);
		}else{
			response.setStatus(400);//실패시 400
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
