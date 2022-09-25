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
		
		// 리뷰 페이징
		final int ROW_PER_PAGE = 10;
		final int PAGE_PER_BLOCK = 10;
		
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}	
		
		int currentPage = Integer.valueOf(pageNum);
		
		int startRow = (currentPage - 1) * ROW_PER_PAGE + 1;
		int endRow = startRow + ROW_PER_PAGE - 1;
		
		ReviewDao rd2 = ReviewDao.getInstance();
		
		int total = rd2.totalMvRv(movieno);
		int totalPage = (int) Math.ceil((double) total / ROW_PER_PAGE);
		int startPage = currentPage - (currentPage - 1) % PAGE_PER_BLOCK;
		int endPage = startPage + PAGE_PER_BLOCK - 1;
		
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		
		List<Review> rvPaging = rd2.rvList(startRow, endRow, movieno);
		
		request.setAttribute("rvPaging", rvPaging);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("PAGE_PER_BLOCK", PAGE_PER_BLOCK);
		
		
		// 리뷰 전체 리스트 불러오기
		ReviewDao rd = ReviewDao.getInstance();
		List<Review> rvList2 = rd.reviewList(movieno);
		request.setAttribute("rvList2", rvList2);
		
		

		MovieDao md = MovieDao.getInstance();
		md.readCount(movieno);
		Movie mvInfo = md.show(movieno);
		request.setAttribute("mvInfo", mvInfo);
		
		ActorDao ad = ActorDao.getInstance();
		List<Actor> actorList = ad.list(movieno);
		request.setAttribute("actorList", actorList);
		
		
		
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
