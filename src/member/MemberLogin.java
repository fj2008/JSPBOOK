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
		//�α��� ->����ڰ� �Է��� ���̵�,��й�ȣ�� ȸ�� ������ �ִ��� Ȯ��
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
			
			boolean isExist = rs.next();//�˻������ ��ġ���ʰ� �ϳ��� ���ö�
			// 		while(rs.next()){//rs.next()���� �˻������ �������� �̵��ϴ¸޼����̰� ���̻� ���� ����� ���ٸ� false��ȯ}
				
			if(isExist){
				//�α��ν� �Է��� ���̵�, ��й�ȣ�� ȸ�������� ã�Ҵٸ���
				//�α���ó��
				String name = rs.getString("name");//db�����͸� ���ڿ��� �������� �޼���
				
				int idx= rs.getInt("idx");//������� �ĺ��� ���ǿ� ����
				session.setAttribute("name", name);
				session.setAttribute("idx", idx);//�⺻������Ÿ���� ������ƮŸ�Կ� ����ɶ��� ����ڽ��̵ż� �����̵ȴ�
				
				response.setStatus(200);
			}else{
				//�α��ν� �Է��� ���̵�, ��й�ȣ�� ã�� ���ߴٸ��� 
				//�α��� ���� ó��
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
