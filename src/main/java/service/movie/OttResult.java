package service.movie;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MovieDao;
import model.Movie;
import service.CommandProcess;

public class OttResult implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String ottName = request.getParameter("ottName");
		
		MovieDao md = MovieDao.getInstance();
		List<Movie> mvList = md.ottSearch(ottName);
		
		request.setAttribute("ottName", ottName);
		request.setAttribute("mvList", mvList);
		
		return "ottResult";
	}

}
