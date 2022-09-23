package service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import model.Member;
import service.CommandProcess;

public class LoginResult implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String password = request.getParameter("password");

		MemberDao md = MemberDao.getInstance();
		Member member = md.select(id);

		int result = 0;
		if (member == null || member.getMemberout().equals("Y")) {
			result = -1;
		} else {
			if (member.getPassword().equals(password)) {
				int mno = member.getMemberno();
				
				HttpSession session = request.getSession();
				session.setAttribute("id", id);
				session.setAttribute("memberno", mno);
				result = 1;
			} else
				result = 0;
		}
		request.setAttribute("result", result);
		return "loginResult";
	}
}
