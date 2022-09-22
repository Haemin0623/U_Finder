package service.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReviewDao;
import model.Review;
import service.CommandProcess;

public class ReviewDeleteAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int reviewno = Integer.parseInt(request.getParameter("reviewno"));
		
		ReviewDao rd = ReviewDao.getInstance();
		
		int result = rd.reviewDel(reviewno);
		Review review = rd.reviewShow(reviewno);
		
		request.setAttribute("result", result);
		request.setAttribute("review", review);
		
		return "reviewDeleteResult";
	}

}
