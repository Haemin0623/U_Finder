package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TagDao;
import model.Tag;
import service.CommandProcess;

public class TagAddAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		int movieno = Integer.valueOf(request.getParameter("movieno"));
		String tagContent = request.getParameter("tag");
		
		Tag tag = new Tag();
		tag.setTag(tagContent);
		tag.setMovieno(movieno);
		
		TagDao td = TagDao.getInstance();
		
		int result = 0;
		result = td.insert(tag);
		
		request.setAttribute("result", result);
		request.setAttribute("movieno", movieno);
		
		return "tagAddResult";
	}

}
