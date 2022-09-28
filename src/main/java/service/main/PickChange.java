package service.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PickDao;
import model.Pick;
import service.CommandProcess;

public class PickChange implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		int movieno = Integer.valueOf(request.getParameter("movieno"));
		int memberno = Integer.parseInt(request.getParameter("memberno"));
		int result = 0;

		PickDao pd = PickDao.getInstance();
		Pick chk = pd.chkPick(movieno, memberno);

		if (chk == null) {
			result = pd.pickPick(movieno, memberno);
			result = 1;
		} else {
			result = pd.delPick(movieno, memberno);
			result = 0;			
		}
		
		request.setAttribute("result", result);

		return "pickChange";
	}

}
