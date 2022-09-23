package service.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import dao.PickDao;
import model.Member;
import service.CommandProcess;

public class PickDeleteAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int result = 0;
		int movieno = Integer.parseInt(request.getParameter("movieno"));
		String id = request.getParameter("id");
		
		PickDao pick = PickDao.getInstance();
		
		result = pick.pickdelete(movieno,id); 
		request.setAttribute("result", result);
		
		
		return "PickDeleteResult";
	}

}
