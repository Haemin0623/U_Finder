package service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import model.Member;
import service.CommandProcess;

public class FindPwResult implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		MemberDao md = MemberDao.getInstance();
		Member member = md.findPassword(id,password);
		request.setAttribute("member", member);
		
		return "findPwResult";
	}

}
