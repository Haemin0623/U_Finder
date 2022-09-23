package service.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PickDao;
import model.Pick;
import service.CommandProcess;

public class PickPick implements CommandProcess {

	private Object result;

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int movieno = Integer.parseInt(request.getParameter("movieno"));
		int memberno = Integer.parseInt(request.getParameter("memberno"));
		
		// 찜 추가
		PickDao pd = PickDao.getInstance();
		Pick chk = pd.chkPick(movieno, memberno);
		
		if (chk == null) {
			result = pd.pickPick(movieno, memberno);
		} else {
			result = 0;
		}
		

		request.setAttribute("result", result);
		request.setAttribute("movieno", movieno);
		
		
		return "pickPick";
	}

}
