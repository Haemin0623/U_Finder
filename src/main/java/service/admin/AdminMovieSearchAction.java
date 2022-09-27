package service.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MovieDao;
import model.Movie;
import service.CommandProcess;

public class AdminMovieSearchAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String searchWord = request.getParameter("searchWord");
		
		MovieDao md = MovieDao.getInstance();
		List<Movie> list = md.search(searchWord);
		
		request.setAttribute("list", list);
		request.setAttribute("searchWord", searchWord);
		
		
		return "movieList";
	}

}
