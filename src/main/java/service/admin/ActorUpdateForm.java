package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CommandProcess;

public class ActorUpdateForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		int actorno = Integer.valueOf(request.getParameter("actorno"));
		String actorname = request.getParameter("actorname");
		int movieno = Integer.valueOf(request.getParameter("movieno"));
		
		request.setAttribute("actorno", actorno);
		request.setAttribute("actorname", actorname);
		request.setAttribute("movieno", movieno);
		
		return "actorUpdateForm";
	}

}
