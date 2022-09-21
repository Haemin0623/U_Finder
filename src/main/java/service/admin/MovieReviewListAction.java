package service.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReviewDao;
import model.Review;
import service.CommandProcess;

public class MovieReviewListAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		int movieno = Integer.valueOf(request.getParameter("movieno"));
		
		ReviewDao rd = ReviewDao.getInstance();
		List<Review> list = rd.reviewList(movieno);
		
		request.setAttribute("list", list);
		
		return "movieReviewList";
	}

}
