package service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.CommandProcess;

public class Logout implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		//세션 초기화
		HttpSession session = request.getSession();
		session.invalidate();

		return "logout";
	}

}
