package controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.CommandProcess;

// urlPatterns="*.do", 끝이 .do인 url을 처리하겠다
@WebServlet(urlPatterns = "*.do", initParams = {
		@WebInitParam(name = "config", value = "/WEB-INF/command.properties") })
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Map<String, Object> commandMap = new HashMap<>();

	// init method는 doGet() 또는 doPost() 메서드 전에 단 한번만 실행할 메서드
	// 여기서는 properties파일을 통해 객체를 만들어 commandMap을 완성하는 작업을 한다
	public void init(ServletConfig config) throws ServletException {
		String props = config.getInitParameter("config");
		// props : "/WEB-INF/command.properties"
		
		Properties pr = new Properties();
		// Java Properties클래스의 특징 키=값을 가진 Map을 구현
		
		FileInputStream f = null;

		try {
			String configFilePath = config.getServletContext().getRealPath(props);
			// configFilePath 실제 사용할 위치에 있는 이름

			f = new FileInputStream(configFilePath);
			pr.load(f);
			// pr에는 command.properties라는 file의 데이터를 사용
			// =앞에 있는 views/movie/searchResult.do 는 key
			// =뒤에 있는 service.SearchResult 는 값

		} catch (IOException e) {
			throw new ServletException(e);
		} finally {
			if (f != null) {
				try {
					f.close();
				} catch (IOException ex) {
				}
			}
		}

		Iterator<Object> keyIter = pr.keySet().iterator();
		// message.do
		while (keyIter.hasNext()) {
			String command = (String) keyIter.next();
			// command : "views/movie/searchResult.do"
			
			String className = pr.getProperty(command);
			// className : "service.SearchResult"
			
			try {
				Class<?> commandClass = Class.forName(className);
				// commandClass : service패키지의 SearchResult 클래스
				
				Object commandInstance = commandClass.getDeclaredConstructor().newInstance();
				// commandInstance : service패키지의 SearchResult로 만든 인스턴스(객체)
				
				commandMap.put(command, commandInstance);
				// commnadMap에는
				// key가 문자열 (String)
				// 값이 인스턴스(생성된 객체) (Object)
				
			} catch (Exception e) {
				throw new ServletException(e);
			}
		}
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String view = null;
		CommandProcess com = null;
		try { 
			// url : http://localhost(ip번호):8080/project_semi/views/movie/searchResult.do
			String command = request.getRequestURI();
			// command : "/project_semi/views/movie/searchResult.do"
			// request.getContextPath() : /project_semi
			// request.getContextPath().length()+1 : 14 + 1
			
			command = command.substring(request.getContextPath().length() + 1);
			// command는 /project_semi/ (길이:15)이 빠진 views/movie/searchResult.do가 된다
			
			com = (CommandProcess) commandMap.get(command);
			// command : key(views/movie/searchResult.do)로 value인 service패키지의 SearchResult 인스턴스를 받아옴
			/* com : SearchResult 인스턴스를 CommandProcess로 형변환
			   (Object로 반환됐으니 request() 메서드를 제대로 사용하려면 형변환을 해줘야한다) */
			
			// SearchResult 인스턴스의 requestPro()메소드 실행
			view = com.requestPro(request, response);
			// 메서드의 결과로 "searchResult" 문자열이 리턴됨

		} catch (Throwable e) {
			throw new ServletException(e);
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(view + ".jsp");	// "searchResult.jsp"
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}
}