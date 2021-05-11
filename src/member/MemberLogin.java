package member;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MemberLogin
 */
@WebServlet("/member/login")
public class MemberLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//로그인 ->사용자가 입력한 아이디,비밀번호가 회원 정보에 있는지 확인
		HttpSession session =request.getSession();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		Connection conn = null;
		
		try{
			Class.forName("org.mariadb.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
			
			PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM member1 WHERE id=? AND pw=?");
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			ResultSet rs =pstmt.executeQuery();
			
			boolean isExist = rs.next();//검색결과가 겹치지않고 하나만 나올때
			// 		while(rs.next()){//rs.next()다음 검색결과로 한행한행 이동하는메서드이고 더이상 읽을 결과가 없다면 false반환}
				
			if(isExist){
				//로그인시 입력한 아이디, 비밀번호로 회원정보를 찾았다며은
				//로그인처리
				String name = rs.getString("name");//db데이터를 문자열로 꺼내오는 메서드
				
				int idx= rs.getInt("idx");//사용자의 식별값 세션에 저장
				session.setAttribute("name", name);
				session.setAttribute("idx", idx);//기본데이터타입이 오브잭트타입에 저장될때는 오토박싱이돼서 저장이된다
				
				response.setStatus(200);
			}else{
				//로그인시 입력한 아이디, 비밀번호를 찾지 못했다면은 
				//로그인 실패 처리
				response.setStatus(401);
			}

			
				
		}catch(ClassNotFoundException |SQLException e){
			e.printStackTrace();
		}finally{
			if(conn != null){
				try{
					conn.close();
				}catch(SQLException e){
				}
			}
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
