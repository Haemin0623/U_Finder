package service.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TagDao;
import model.Tag;
import service.CommandProcess;

public class TagUpdateAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int tagno = Integer.valueOf(request.getParameter("tagno"));
		String tagcontent = request.getParameter("tag");
		int movieno = Integer.valueOf(request.getParameter("movieno"));
		
		TagDao td = TagDao.getInstance();
		Tag tag = new Tag();
		
		tag.setTagno(tagno);
		tag.setTag(tagcontent);
		
		int result = 0;
		result = td.update(tag);
		
		request.setAttribute("result", result);
		request.setAttribute("movieno", movieno);
		
		return "tagUpdateResult";
	}

}
