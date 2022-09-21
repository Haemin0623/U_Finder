package service.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReviewDao;
import model.Review;
import service.CommandProcess;

public class ReviewUpdateForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int reviewno = Integer.parseInt(request.getParameter("reviewno"));
		int movieno = Integer.parseInt(request.getParameter("movieno"));
		
		ReviewDao rd = ReviewDao.getInstance();
		Review review = rd.reviewShow(reviewno);
		
		request.setAttribute("review", review);
		request.setAttribute("movieno", movieno);
		
		return "reviewUpdateForm";
	}

}
