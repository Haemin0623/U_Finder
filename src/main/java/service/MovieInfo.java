package service;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ActorDao;
import dao.MovieDao;
import model.Actor;
import model.Movie;

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
		
		return "movieInfo";
	}

}
