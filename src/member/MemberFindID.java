package member;

import java.io.IOException;
import java.io.PrintWriter;
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

/**
 * Servlet implementation class MemberFindID
 */
@WebServlet("/member/find_id")
public class MemberFindID extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberFindID() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		//로그인 ->사용자가 입력한 아이디,비밀번호가 회원 정보에 있는지 확인
		String name = request.getParameter("name");
		Connection conn = null;
		
		try{
			Class.forName("org.mariadb.jdbc.Driver");//드라이버로드
			
			conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
			
			PreparedStatement pstmt = conn.prepareStatement("SELECT id FROM member1 WHERE name=?");
			pstmt.setString(1, name);;
			
			ResultSet rs =pstmt.executeQuery();//resultSet이라는 객체로 값을 반환함
			
			boolean isExist = rs.next();
			if(isExist){
				String id = rs.getString("id");
				
				PrintWriter out = response.getWriter();
				out.print(id);
				
				response.setStatus(200);
			}else{
				response.setStatus(404);
			}
		}catch(ClassNotFoundException |SQLException e){
			e.printStackTrace();
			response.setStatus(500);
		}finally{
			if(conn != null){
				try{
					conn.close();
				}catch(SQLException e){
					e.printStackTrace();
					response.setStatus(500);
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
