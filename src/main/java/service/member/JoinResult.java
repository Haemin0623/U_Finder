package service.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import model.Member;
import service.CommandProcess;

public class JoinResult implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
		String nickname = request.getParameter("nickname");
		String netflix = request.getParameter("netflix");
		String disney = request.getParameter("disney");
		String coupang = request.getParameter("coupang");
		String tving = request.getParameter("tving");

		Member member = new Member();
		member.setId(id);
		member.setPassword(password);
		member.setConfirmPassword(confirmPassword);
		member.setNickname(nickname);
		member.setNetflix(netflix);
		member.setDisney(disney);
		member.setCoupang(coupang);
		member.setTving(tving);

		MemberDao md = MemberDao.getInstance();
		Member m1 = md.select(id);
		int result = 0;
		if (m1 == null) {
			result = md.insert(member);
		} else
			result = -1;
		request.setAttribute("result", result);
		return "joinResult";
	}

}
