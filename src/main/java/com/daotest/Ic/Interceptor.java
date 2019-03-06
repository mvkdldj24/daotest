package com.daotest.Ic;

import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class Interceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest rq, HttpServletResponse rs, Object o) throws Exception {
		String ln = rq.getParameter("ok");
		ln = Objects.isNull("ok") || ln == "" ? "null" : ln;
		System.out.printf("o %s", o);
		if (ln.equals("ok")) {
			System.out.println("LOGIN PASS");
			return true;
		} else {
			rs.sendRedirect("");
			return false;
		}

		// 리턴값이 true이면 핵심 메서드가 실행, false면 핵심 메서드가 실행X
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

}
