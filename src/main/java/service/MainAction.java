package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MovieDao;
import model.Movie;

public class MainAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
			
		MovieDao md = MovieDao.getInstance();
		List<Movie> list = md.hotMovie();
		
		request.setAttribute("list", list);
	
		return "main";
	}

}
