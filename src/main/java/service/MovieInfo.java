package service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MovieDao;
import model.Movie;

public class MovieInfo implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int movieno = Integer.parseInt(request.getParameter("movieno"));
		
		MovieDao md = MovieDao.getInstance();
		Movie mvInfo = md.show(movieno);
		
		request.setAttribute("mvInfo", mvInfo);
		
		return "movieInfo";
	}

}
