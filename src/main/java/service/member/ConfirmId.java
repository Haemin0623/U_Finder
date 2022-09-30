package service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import model.Member;
import service.CommandProcess;

public class ConfirmId implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String msg="";
		
		MemberDao md = MemberDao.getInstance();
		Member member = md.select(id);
		if(member==null) {
			msg="사용가능한 ID 입니다";
		} else {
			msg = "이미 사용중인 ID 입니다.";
		}
		request.setAttribute("msg", msg);
		return "confirmId";
	}

}
