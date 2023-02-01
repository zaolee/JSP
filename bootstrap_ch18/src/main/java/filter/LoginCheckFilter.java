package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LoginCheckFilter implements Filter {
	@Override
	public void init(FilterConfig config) throws ServletException {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpSession session = httpRequest.getSession(false);

		boolean login = false;
		if (session != null) {
			if (session.getAttribute("authUser") != null) { // member의 값이 있으면
				login = true;
			}
		}
		if (login) {
			chain.doFilter(request, response); // 통과
		} else {
			RequestDispatcher dispatcher = request // 값이 없으면 /loginForm.jsp로 ㄱㄱ
					 .getRequestDispatcher("/login.do");
//					.getRequestDispatcher("/WEB-INF/view/member/login.jsp");
			dispatcher.forward(request, response);
		}
	}

	@Override
	public void destroy() {
	}
}