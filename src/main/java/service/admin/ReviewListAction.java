package service.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReviewDao;
import model.Review;
import service.CommandProcess;

public class ReviewListAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int memberno = Integer.valueOf(request.getParameter("memberno"));
		
		ReviewDao rd = ReviewDao.getInstance();
		List<Review> list = rd.memberReviewList(memberno);
		
		request.setAttribute("list", list);
		request.setAttribute("memberno", memberno);
		
		return "memberReviewList";
	}

}
