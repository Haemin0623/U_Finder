package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.CommandProcess;

public class AdminLoginAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int result = 0;
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		if(id.equals("master") && password.equals("123456") ) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			result = 1;
		}
		
		request.setAttribute("result", result);
		
		return "admin_loginResult";
	}

}
