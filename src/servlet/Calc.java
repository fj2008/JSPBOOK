package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Calc
 */
@WebServlet("/calc")
public class Calc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Calc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String su1 = request.getParameter("su1");
		String su2 = request.getParameter("su2");
		
		int su1_i = Integer.parseInt(su1);
		int su2_i = Integer.parseInt(su2);
		
		int plus = su1_i + su2_i;
		int minus = su1_i - su2_i;
		int div = su1_i / su2_i;
		int mul = su1_i * su2_i;
		
		request.setAttribute("plus", plus);
		request.setAttribute("minus", minus);
		request.setAttribute("div", div);
		request.setAttribute("mul", mul);
		
		RequestDispatcher dis = request.getRequestDispatcher("/calcResult.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
