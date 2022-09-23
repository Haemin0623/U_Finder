package service.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PickDao;
import service.CommandProcess;

public class PickUpdate implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int movieno = Integer.parseInt(request.getParameter("movieno"));
		int memberno = Integer.parseInt(request.getParameter("memberno"));
		System.out.println(movieno + "," +  memberno);
		// 찜 삭제
		PickDao pd = PickDao.getInstance();
		int result = pd.delPcik(movieno, memberno);
		
		request.setAttribute("result", result);
		request.setAttribute("movieno", movieno);
		System.out.println("result = "+ result);
		
		return "pickDel";
	}

}
