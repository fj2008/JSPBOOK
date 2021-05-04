package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Hello
 */
@WebServlet("/hello")
public class Hello extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hello() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 서블릿에서 클라이언트의 IP와
		// 서블릿을 호출한 방식을 알아냈음
		String clientIP = request.getRemoteAddr();
		String method = request.getMethod();
		
		// 서블릿이 알아낸(처리한)결과를 뷰 단의 JSP로 전달해서
		// 사용자가 볼 수 있도록
		
		// request 내장 객체를 사용해서 결과를 전달할 준비를 한다.
		request.setAttribute("clientIP", clientIP);
		request.setAttribute("method", method);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/forward.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
