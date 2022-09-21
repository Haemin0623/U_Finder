package service.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import model.Member;
import service.CommandProcess;

public class UpdateInfoForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		
		MemberDao md = MemberDao.getInstance();
		Member member =  md.select(id);
		
		request.setAttribute("member",member);
		
		return "UpdateInfo";
	}

}
