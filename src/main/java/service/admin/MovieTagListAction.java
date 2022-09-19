package service.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TagDao;
import model.Tag;
import service.CommandProcess;

public class MovieTagListAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int movieno = Integer.valueOf(request.getParameter("movieno"));
		
		TagDao td = TagDao.getInstance();
		
		List<Tag> list = td.tagList(movieno);
		
		request.setAttribute("list", list);
		
		return "movieTagList";
	}

}
