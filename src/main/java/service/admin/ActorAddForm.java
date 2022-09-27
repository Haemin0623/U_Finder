package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CommandProcess;

public class ActorAddForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		int movieno = Integer.valueOf(request.getParameter("movieno"));
		request.setAttribute("movieno", movieno);
		
		return "actorAddForm";
	}

}
