package service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CommandProcess;

public class LoginForm implements CommandProcess {

	public String requestPro(HttpServletRequest request, HttpServletResponse response) {		
		return "loginForm";
	}

}
 