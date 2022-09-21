package service.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReviewDao;
import service.CommandProcess;

public class ReviewDel implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int reviewno = Integer.parseInt(request.getParameter("reviewno"));
		int movieno = Integer.parseInt(request.getParameter("movieno"));
		
		ReviewDao rd = ReviewDao.getInstance();
		int result = rd.reviewDel(reviewno);
		
		
		request.setAttribute("result", result);
		request.setAttribute("movieno", movieno);
		
		return "rvDelResult";
	}

}
