package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CommandProcess;

public class TagUpdateForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int tagno = Integer.valueOf(request.getParameter("tagno"));
		String tag = request.getParameter("tag");
		int movieno = Integer.valueOf(request.getParameter("movieno"));
		
		request.setAttribute("tagno", tagno);
		request.setAttribute("tag", tag);
		request.setAttribute("movieno", movieno);
		
		return "tagUpdateForm";
	}

}
