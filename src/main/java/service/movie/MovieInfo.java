package service.movie;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ActorDao;
import dao.MovieDao;
import dao.ReviewDao;
import model.Actor;
import model.Movie;
import model.Review;
import service.CommandProcess;

public class MovieInfo implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int movieno = Integer.parseInt(request.getParameter("movieno"));
		
		MovieDao md = MovieDao.getInstance();
		md.readCount(movieno);
		Movie mvInfo = md.show(movieno);
		request.setAttribute("mvInfo", mvInfo);
		
		ActorDao ad = ActorDao.getInstance();
		List<Actor> actorList = ad.list(movieno);
		request.setAttribute("actorList", actorList);
		
		
		// 리뷰 전체 리스트 불러오기
		ReviewDao rd = ReviewDao.getInstance();
		List<Review> rvList = rd.reviewList(movieno);
		
		request.setAttribute("rvList", rvList);
		
		
		return "movieInfo";
	}

}
