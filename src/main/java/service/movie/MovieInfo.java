package service.movie;


import java.util.List;
import java.util.Map;

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
		
		// 장르가 같은 영화 리스트 불러오기
		String genre = md.mvGenre(movieno);
		MovieDao md2 = MovieDao.getInstance();
		List<Movie> recGenre = md2.genreList(genre, movieno);
		request.setAttribute("recGenre", recGenre);
		
		//배우가 같은 영화 리스트 불러오기
		MovieDao md3 = MovieDao.getInstance();
		List<Movie> recActor = md3.actMvList(movieno);
		request.setAttribute("recActor", recActor);
		
		return "movieInfo";
	}

}
