package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MovieDao;
import model.Movie;

public class SearchResult implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String searchWord = request.getParameter("searchWord");
		
		MovieDao md = MovieDao.getInstance();
		List<Movie> mvList = md.search(searchWord);
		
		request.setAttribute("mvList", mvList);
		
		return "searchResult";
	}

}
