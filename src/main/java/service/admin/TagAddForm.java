package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CommandProcess;

public class TagAddForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		String movieno = request.getParameter("movieno");
		
		request.setAttribute("movieno", movieno);
		
		return "tagAddForm";
	}

}
