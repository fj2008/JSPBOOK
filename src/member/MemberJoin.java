package member;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;

/**
 * Servlet implementation class Join
 */
@WebServlet("/member/join")
public class MemberJoin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberJoin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id= request.getParameter("id");
		String pw= request.getParameter("pw");
		String name =  request.getParameter("name");
		
		Connection conn = null;
		try{
			
			Class.forName("org.mariadb.jdbc.Driver");
		
			conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
			
			PreparedStatement pstmt = conn.prepareStatement("INSERT INTO member1(id,pw,name) VALUES(?,?,?)");
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			
			
			int row = pstmt.executeUpdate();
			
			if(row == 1){
				//회원가입 성공
				response.setStatus(Response.SC_CREATED);
			}else{
				//회원가입 실패
				response.setStatus(400);
			}
		}catch(ClassNotFoundException | SQLException e){
			e.printStackTrace();
				response.setStatus(500);
				
		}finally{
			if(conn != null){
				try{
					conn.close();
					
					
				}catch(SQLException e){
					e.printStackTrace();
					
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
