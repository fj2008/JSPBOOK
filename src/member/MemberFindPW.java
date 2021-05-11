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
 * Servlet implementation class MemberFindPW
 */
@WebServlet("/member/find_pw")
public class MemberFindPW extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberFindPW() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");


		String id = request.getParameter("id");
		String name = request.getParameter("name");

		Connection conn = null;

		try{
			Class.forName("org.mariadb.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
			
			PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM member1 WHERE id=?AND name =?");	
			
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			
			ResultSet rs =pstmt.executeQuery();
			
			boolean isExist = rs.next();
				
			if(isExist){
				String pw = rs.getString("pw");
				PrintWriter out = response.getWriter();
				out.print(pw);
				
				response.setStatus(200);
			}else{
				response.setStatus(401);
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
