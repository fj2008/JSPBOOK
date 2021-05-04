package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class First
 */
@WebServlet("/first")
public class First extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public First() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		
		String contentType = request.getParameter("contentType");
		
		if(contentType.equals("html")) {
			// HTML에 관련된 설명을 보여주는 웹 페이지 전달
			PrintWriter out = response.getWriter();
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>페이지의 제목</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<strong>HTML은 웹페이지를 만드는 언어입니다.</strong>");
			out.println("<p>그러나 HTML은 웹 페이지를 동적으로...</p>");
			out.println("<p>사용자의 요청에 따라 웹 페이지를 구성할 수는 없습니다.</p>");
			out.println("<p>그래서 HTML을 정적인 웹 페이지 언어라고 합니다.</p>");
			out.println("</body>");
			out.println("</html>");
		} else if(contentType.equals("css")) {
			// css에 관련된 설명을 보여주는 웹 페이지 전달
			PrintWriter out = response.getWriter();
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>페이지의 제목</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<strong>CSS는 웹페이지의 디자인을 만드는 언어입니다.</strong>");
			out.println("<p>HTML로 뼈대를 잡고 CSS로 디자인을 입힙니다.</p>");
			out.println("</body>");
			out.println("</html>");
		} else if(contentType.equals("js")) {
			// JavaScript에 관련된 설명을 보여주는 웹 페이지 전달
			PrintWriter out = response.getWriter();
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>페이지의 제목</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<strong>JavaScript는 웹페이지에 움직임을 줄 수 있는 언어입니다.</strong>");
			out.println("<p>HTML을 동적으로 만든다기 보다는... HTML로 보여주는 이미지를 움직이게 만들거나</p>");
			out.println("<p>사용자의 이벤트(클릭, 드래그, 키 입력 등)를 감지해서</p>");
			out.println("<p>그에 따라 정적인 HTML에 애니메이션을 줄 수 있습니다.</p>");
			out.println("</body>");
			out.println("</html>");
		} else {
			// HTML, css, JavaScript에 관련된 설명을 보여주는 웹 페이지 전달
			PrintWriter out = response.getWriter();
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>페이지의 제목</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<strong>HTML은 웹페이지를 만드는 언어입니다.</strong>");
			out.println("<p>그러나 HTML은 웹 페이지를 동적으로...</p>");
			out.println("<p>사용자의 요청에 따라 웹 페이지를 구성할 수는 없습니다.</p>");
			out.println("<p>그래서 HTML을 정적인 웹 페이지 언어라고 합니다.</p>");
			out.println("<hr>");
			out.println("<strong>CSS는 웹페이지의 디자인을 만드는 언어입니다.</strong>");
			out.println("<p>HTML로 뼈대를 잡고 CSS로 디자인을 입힙니다.</p>");
			out.println("<hr>");
			out.println("<strong>JavaScript는 웹페이지에 움직임을 줄 수 있는 언어입니다.</strong>");
			out.println("<p>HTML을 동적으로 만든다기 보다는... HTML로 보여주는 이미지를 움직이게 만들거나</p>");
			out.println("<p>사용자의 이벤트(클릭, 드래그, 키 입력 등)를 감지해서</p>");
			out.println("<p>그에 따라 정적인 HTML에 애니메이션을 줄 수 있습니다.</p>");
			out.println("</body>");
			out.println("</html>");
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
