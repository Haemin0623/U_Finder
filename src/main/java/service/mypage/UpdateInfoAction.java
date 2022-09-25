package service.mypage;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.MemberDao;
import model.Member;
import service.CommandProcess;

public class UpdateInfoAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		Member member = new Member();
		int result = 0;
		
		// file upload
		String real = request.getSession().getServletContext().getRealPath("posterUpload");
		int maxSize = 1024 * 1024 * 20; // 이미지 사이즈 20MB 
				
		try {
		MultipartRequest mr = new MultipartRequest(request, real, maxSize, "utf-8", new DefaultFileRenamePolicy());
								
		String id = mr.getParameter("id");
		String nickname = mr.getParameter("nickname");
		String password = mr.getParameter("password");
		String netflix = mr.getParameter("netflix");
		String disney = mr.getParameter("disney");
		String coupang = mr.getParameter("coupang");
		String tving = mr.getParameter("tving");
		String profile = mr.getFilesystemName("profile");
		
		
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
		
		member.setId(id);
		member.setNickname(nickname);
		member.setPassword(password);
		member.setNetflix(netflix);
		member.setDisney(disney);
		member.setCoupang(coupang);
		member.setTving(tving);
		member.setProfile(profile);
		
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		MemberDao mb = MemberDao.getInstance();
		result = mb.updateInfo(member);
		
		request.setAttribute("result", result);
		
		return "UpdateInfoResult";
	}

}
