package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ActorDao;
import model.Actor;
import service.CommandProcess;

public class ActorUpdateAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int actorno = Integer.valueOf(request.getParameter("actorno"));
		String actorname = request.getParameter("actorname");
		int movieno = Integer.valueOf(request.getParameter("movieno"));
		
		Actor actor = new Actor();
		actor.setActorno(actorno);
		actor.setActorname(actorname);
		actor.setMovieno(movieno);
		
		ActorDao ad = ActorDao.getInstance();
		int result = 0;
		result = ad.updateActor(actor);
		
		request.setAttribute("result", result);
		request.setAttribute("movieno", movieno);
		
		return "actorUpdateResult";
	}

}
