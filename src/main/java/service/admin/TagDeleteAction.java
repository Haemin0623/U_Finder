package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TagDao;
import service.CommandProcess;

public class TagDeleteAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int tagno = Integer.parseInt(request.getParameter("tagno"));
		int movieno = Integer.parseInt(request.getParameter("movieno"));
		
		TagDao td = TagDao.getInstance();
		
		int result = 0;
		result = td.delete(tagno);
		
		request.setAttribute("result", result);
		request.setAttribute("movieno", movieno);
		
		return "tagDeleteResult";
	}

}
