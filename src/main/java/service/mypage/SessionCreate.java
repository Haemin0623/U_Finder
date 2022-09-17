package service.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.CommandProcess;

public class SessionCreate implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		// 테스트용 세션 만들기
		
		HttpSession session = request.getSession();
		session.setAttribute("id", "test");
		
		return "mypageForm";
	}

}
