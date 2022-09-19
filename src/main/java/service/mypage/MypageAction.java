package service.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import dao.PickDao;
import model.Member;
import service.CommandProcess;

public class MypageAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		final int ROW_PER_PAGE = 10;
		final int PAGE_PER_BLOCK = 10;
		
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}	
		
		int currentPage = Integer.valueOf(pageNum);
		
		int startRow = (currentPage - 1) * ROW_PER_PAGE + 1;
		int endRow = startRow + ROW_PER_PAGE - 1;
		
		String id = request.getParameter("id");
		
		MemberDao md = MemberDao.getInstance();
		PickDao pd = PickDao.getInstance();
		
		int total = md.total();
		int totalPage = (int) Math.ceil((double) total / PAGE_PER_BLOCK);
		int startPage = currentPage - (currentPage - 1) % PAGE_PER_BLOCK;
		int endPage = startPage + PAGE_PER_BLOCK - 1;
		
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		
		Member member =  md.select(id);
		List<Member> list = pd.pickList(startRow, endRow);
		List<String> plist = pd.pickPoster(id);
		
		request.setAttribute("list", list);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("PAGE_PER_BLOCK", PAGE_PER_BLOCK);
	
		request.setAttribute("member", member);
		request.setAttribute("plist", plist);
		
		return "mypageForm";
	}
}
