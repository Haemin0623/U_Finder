package service.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PickDao;
import service.CommandProcess;

public class PickPick implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int movieno = Integer.parseInt(request.getParameter("movieno"));
		int memberno = Integer.parseInt(request.getParameter("memberno"));
		
		// 찜 추가
		PickDao pd = PickDao.getInstance();
		int result = pd.pickPick(movieno, memberno);
		
		request.setAttribute("result", result);
		request.setAttribute("movieno", movieno);
		
		
		return "pickPick";
	}

}
