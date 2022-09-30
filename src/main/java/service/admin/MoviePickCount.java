package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PickDao;
import service.CommandProcess;

public class MoviePickCount implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int movieno = Integer.valueOf(request.getParameter("movieno"));
		PickDao pd = PickDao.getInstance();
		
		int pickCount = pd.moviePickCount(movieno);
		
		request.setAttribute("pickCount", pickCount);
		
		return "moviePickCount";
	}

}
