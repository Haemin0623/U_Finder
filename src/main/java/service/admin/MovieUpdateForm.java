package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MovieDao;
import model.Movie;
import service.CommandProcess;

public class MovieUpdateForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int movieno = Integer.valueOf(request.getParameter("movieno"));
		
		MovieDao md = MovieDao.getInstance();
		
		Movie movie = md.show(movieno);
		
		request.setAttribute("movie", movie);
		
		return "movieUpdateForm";
	}

}
