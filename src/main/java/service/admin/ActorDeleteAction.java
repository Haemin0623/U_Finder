package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ActorDao;
import service.CommandProcess;

public class ActorDeleteAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int actorno = Integer.parseInt(request.getParameter("actorno"));
		int movieno = Integer.parseInt(request.getParameter("movieno"));
		
		ActorDao ad = ActorDao.getInstance();
		
		int result = 0;
		result = ad.delete(actorno);
		
		request.setAttribute("result", result);
		request.setAttribute("movieno", movieno);

		
		return "actorDeleteResult";
	}

}
