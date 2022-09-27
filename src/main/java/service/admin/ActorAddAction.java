package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ActorDao;
import model.Actor;
import service.CommandProcess;

public class ActorAddAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		int movieno = Integer.valueOf(request.getParameter("movieno"));
		String actorname = request.getParameter("actorname");
		
		Actor actor = new Actor();
		actor.setMovieno(movieno);
		actor.setActorname(actorname);
		
		ActorDao ad = ActorDao.getInstance();
		int result = ad.insert(actor);
		
		request.setAttribute("result", result);
		request.setAttribute("movieno", movieno);
		
		return "actorAddResult";
	}

}
