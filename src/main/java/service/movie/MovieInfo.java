package service.movie;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ActorDao;
import dao.MovieDao;
import dao.PickDao;
import dao.ReviewDao;
import model.Actor;
import model.Movie;
import model.Pick;
import model.Review;
import service.CommandProcess;

public class MovieInfo implements CommandProcess {

	private Object result;

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
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
		
		// 배우가 같은 영화 리스트 불러오기
		MovieDao md3 = MovieDao.getInstance();
		List<Movie> recActor = md3.actMvList(movieno);
		request.setAttribute("recActor", recActor);
		
		// 현재 로그인한 회원의 pick 정보 가져오기
		if (id != null) {
			PickDao pd = PickDao.getInstance();
			Pick pkMv = (Pick) pd.getPick(id, movieno);
			if (pkMv == null) {
				result = 0;
			} else {
				result = 1;
			}
			request.setAttribute("pickResult", result);
		}
		
		
		return "movieInfo";
	}

}
