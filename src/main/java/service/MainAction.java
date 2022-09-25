package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MovieDao;
import dao.PickDao;
import model.Movie;

public class MainAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
	
		// 캐시 삭제, 배너 이미지 바로 적용위해서 추가
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", -1);
		response.setHeader("Cache-Control", "no-cache");

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		MovieDao md = MovieDao.getInstance();
		List<Movie> hotList = md.hotMovie();

		if (id != null) {
			PickDao pd = PickDao.getInstance();
			List<Movie> pickList = pd.pickMovie(id);
			request.setAttribute("pickList", pickList);
		}

		request.setAttribute("hotList", hotList);

		return "main";
	}

}
