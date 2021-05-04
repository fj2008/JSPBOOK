package chapter12;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class AuthenFilter implements Filter {
	@Override
	public void destroy() {
		System.out.println("AuthenFilter 해제...");
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		 System.out.println("AuthenFilter 초기화...");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("AuthenFilter 수행...");
		String name = request.getParameter("name");
		
		if(name == null || name.trim().length() == 0) {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			
			String message = "입력 된 name 값은 null입니다.";
			writer.println(message);
			
			return;
		}
		
		chain.doFilter(request, response);
	}

}
