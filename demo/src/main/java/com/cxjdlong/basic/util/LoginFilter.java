package com.cxjdlong.basic.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cxjdlong.basic.model.Createmaster;

public class LoginFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest hsq = (HttpServletRequest) req;
		Createmaster m = (Createmaster)hsq.getSession().getAttribute("loginUser");
		String sortID = hsq.getParameter("sortID");
		System.out.println("sortID="+sortID);
		if(m==null){
			((HttpServletResponse)resp).sendRedirect(hsq.getContextPath()+"/admin/login.html");
		}else if(sortID!=null){
			//获取权限按钮
			
			hsq.setAttribute("sortButtonString", PubFunction.getSortbutton(sortID, m.getUserAuthority()+"","chekclistid"));
			 			
		}
		chain.doFilter(req, resp);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
