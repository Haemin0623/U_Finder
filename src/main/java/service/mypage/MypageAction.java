package service.mypage;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import dao.PickDao;
import model.Member;
import service.CommandProcess;

public class MypageAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		
		MemberDao md = MemberDao.getInstance();
		//PickDao pd = PickDao.getInstance();
		
		Member member =  md.select(id);
		
		request.setAttribute("member", member);
		
		return "mypageForm";
	}

}
