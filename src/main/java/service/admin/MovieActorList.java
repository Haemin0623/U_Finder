package service.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ActorDao;
import model.Actor;
import service.CommandProcess;

public class MovieActorList implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int movieno = Integer.valueOf(request.getParameter("movieno"));
		
		ActorDao ad = ActorDao.getInstance();
		
		List<Actor> list = ad.actorList(movieno);
		
		request.setAttribute("list", list);
		request.setAttribute("movieno", movieno);
				
		return "movieActorList";
	}

}
