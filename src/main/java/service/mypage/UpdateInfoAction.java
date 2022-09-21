package service.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import dao.MovieDao;
import model.Member;
import service.CommandProcess;

public class UpdateInfoAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		String id = request.getParameter("id");
		String nickname = request.getParameter("nickname");
		String password = request.getParameter("password");
		String netflix = request.getParameter("netflix");
		String disney = request.getParameter("disney");
		String coupang = request.getParameter("coupang");
		String tving = request.getParameter("tving");
		
		if (netflix == null) {
			netflix = "N";
		}
		if (disney == null) {
			disney = "N";
		}
		if (coupang == null) {
			coupang = "N";
		}
		if (tving == null) {
			tving = "N";
		}
		
		MemberDao mb = MemberDao.getInstance();
		Member member = new Member();
		
		result = mb.insert(member);
		
		request.setAttribute("result", result);
		
		return "UpdateInfoResult";
	}

}
