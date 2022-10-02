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
		String nickname = request.getParameter("nickname");
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
		
		// member 화면에서 입력한 데이터를 받기위한 객체
		Member member = new Member();
		member.setId(id);
		member.setPassword(password);
		member.setNickname(nickname);
		member.setNetflix(netflix);
		member.setDisney(disney);
		member.setCoupang(coupang);
		member.setTving(tving);
		
		//member2 DB에서 중복있는지 확인하기 위한 객체
		MemberDao md = MemberDao.getInstance();
		Member member1 = md.select(id);
		int result = 0;
		
		// 조회해서 없으면, DB에 입력, result는 1
		if (member1 == null) {
			result = md.insert(member);
		} else // 있으면 입력x(이미존재하는 회원)
			result = -1;
		request.setAttribute("result", result);
		return "joinResult";
	}

}
