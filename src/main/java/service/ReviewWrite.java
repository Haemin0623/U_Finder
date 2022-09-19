package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import dao.ReviewDao;
import model.Member;
import model.Review;

public class ReviewWrite implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		MemberDao md = MemberDao.getInstance();
		
		Member member = new Member();
		int memberno = member.getMemberno();
	
		int movieno = Integer.parseInt(request.getParameter("movieno"));
		String content = request.getParameter("content");
		int movielike = Integer.parseInt(request.getParameter("star"));
		
		// 등록할 review 객체 생성
		Review review = new Review();
		review.setContent(content);
		review.setMovielike(movielike);
		review.setMemberno(memberno);
		review.setMovieno(movieno);
		
		// 리뷰 테이블에 등록
		ReviewDao rd = ReviewDao.getInstance();
		int result = rd.insertRv(review);
				
		request.setAttribute("result", result);
		
		
		return "movieInfo";
	}

}
