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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MemberUpdate
 */
@WebServlet("/member/update")
public class MemberUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		Connection conn = null;
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
			
//			int updateCount = stmt.executeUpdate("UPDATE member SET pw = '"+pw+"',name='"+name+"' WHERE idx='"+idx+"' ");
			
			//PreparedStatement �� Statement�� �ٸ����� ������ �̸� �Է��� �� �� �� �ִ� �׸��� �����Ͱ� ������ ? �� �Է��ϸ��
			PreparedStatement pstmt = conn.prepareStatement("UPDATE member1 SET pw =?,name =?,WHERE idx= ?");
			
			HttpSession session = request.getSession();
			int idx = (int) session.getAttribute("idx");
			
			pstmt.setString(1, pw);//ù��° ? ���ٰ� ��й�ȣ�� ���ڿ��� ����
			pstmt.setString(2, name);
			pstmt.setInt(3, idx);//����° ? ���ٰ� idx���� �ְڴ�
		
			int updateCount = pstmt.executeUpdate();//������ �����ÿ� ������ȯ
			
			if(updateCount == 1) {
				//ȸ�� ���� ���� ����
				response.setStatus(200);
			}else {
				//ȸ�� ���� ���� ����
				response.setStatus(500);
			}
	
		} catch (ClassNotFoundException | SQLException e) {
			response.setStatus(500);
		}finally {
			if(conn != null){
				try{
					conn.close();
				}catch(SQLException e){
				}//end catch
				
			}//end if
		}//end try
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
