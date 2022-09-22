package service.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import service.CommandProcess;

public class MemberOutAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		
		HttpSession session = request.getSession();
		MemberDao md = MemberDao.getInstance();
		int result = md.memberOut(id);
		
		if(result >0)
			session.invalidate();
			
			
		request.setAttribute("result", result);
		
		return "memberOutResult";
	}

}
