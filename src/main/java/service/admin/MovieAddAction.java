package service.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.MovieDao;
import model.Movie;
import service.CommandProcess;

public class MovieAddAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int result = 0;
		
		// file upload
		String real = request.getSession().getServletContext().getRealPath("posterUpload");
		int maxSize = 1024 * 1024 * 20; // 이미지 사이즈 20MB 
		
		Movie mv = new Movie();
		
		try {
			MultipartRequest mr = new MultipartRequest(request, real, maxSize, "utf-8", new DefaultFileRenamePolicy());
						
			String moviename = mr.getParameter("moviename");
			String story = mr.getParameter("story");
			String director = mr.getParameter("director");
			int playtime = Integer.valueOf(mr.getParameter("playtime"));
			String netflix = mr.getParameter("netflix");
			String disney = mr.getParameter("disney");
			String coupang = mr.getParameter("coupang");
			String tving = mr.getParameter("tving");
			String genre = mr.getParameter("genre");
			String poster = mr.getFilesystemName("poster");
			String trailer = mr.getParameter("trailer");
			
			if (netflix == null) {
				netflix = "N";
			}
			if (disney == null) {
				disney = "N";
			}
			if (coupang == null) {
				coupang = "N";
			}
			if (tving == null) {
				tving = "N";
			}
			
			mv.setMoviename(moviename);
			mv.setStory(story);
			mv.setDirector(director);
			mv.setPlaytime(playtime);
			mv.setNetflix(netflix);
			mv.setDisney(disney);
			mv.setCoupang(coupang);
			mv.setTving(tving);
			mv.setGenre(genre);
			System.out.println(netflix);
			
			mv.setPoster(poster);
			mv.setTrailer(trailer);		
		
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		
		MovieDao md = MovieDao.getInstance();
		result = md.insert(mv);
		
		request.setAttribute("result", result);
		
		return "movieAddResult";
	}

}
