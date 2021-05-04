package chapter12;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class TestFilter implements Filter {
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("필터 실행 중...");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
//		System.out.println("JSP 처리 전 필터 수행...");
//		System.out.println("Request 필터와 Response 필터 두 가지가 있다고 했음");
//		System.out.println("한 필터에 Reqeust 필터와 Response 필터 두 가지 모두 작성할 수 있음");
//		
//		System.out.println("doFilter 메서드 전에 처리하는 동작이 Request 필터의 역할");
//		
//		System.out.println("예) 로그인이 필요한 페이지로 접근하기전에 로그인 여부 확인");
//		System.out.println("로그인이 되어있지 않다고 필터가 판단했을 때는 doFilter메서드를 호출하지 않고");
//		System.out.println("response.sendRedirect 또는 ReqeustDispatcher 를 사용해서 제어를");
//		System.out.println("적절히 다른 곳으로 옮긴다");
		
		// 제어를 다음 필터 또는 사용자가 요청한 리소스로 전달
		chain.doFilter(request, response);
		
		System.out.println("JSP 처리 후 필터 수행...");
		System.out.println("doFilter 메서드 아래에다가 코드를 작성하면");
		System.out.println("서버가 사용자의 요청을 처리 한 뒤 응답할 때 필터를 할 수 있음");
		System.out.println("필터 클래스를 Reqeust용 필터로 Response용 필터로 따로 만드는게 아니고");
		System.out.println("필터 클래스를 만들고 doFilter 메서드 안에서 세 번째 매개변수(chain)의");
		System.out.println("doFilter 전, 후로 Reqeust용 처리, Response용 처리가 따로 나뉜다.");
		
		System.out.println("예) Mime Type이 정상적인지, Content-Length가 너무 길지는 않은지, gzip처리가 되어있는지");
	}
	
	public void destroy() {
		System.out.println("필터 해제...");
	}
}




