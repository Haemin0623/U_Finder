package service.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import model.Member;
import service.CommandProcess;

public class InfoChkAction implements CommandProcess {

	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		MemberDao md = MemberDao.getInstance();
		Member member = md.select(id);
		
		int result = 0;
		 if ( member.getPassword().equals(password)) {
				result = 1;
			} else
				result = 0;
		 System.out.println("id="+id);
		
		return "infoChkResult";
	}

}
