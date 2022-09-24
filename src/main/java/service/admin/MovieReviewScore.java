package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReviewDao;
import service.CommandProcess;

public class MovieReviewScore implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int movieno = Integer.valueOf(request.getParameter("movieno"));
		
		ReviewDao rd = ReviewDao.getInstance();
		
		float avgScore = rd.avgScore(movieno);
		
		request.setAttribute("avgScore", avgScore);
		
		return "movieRevieScore";
	}

}
