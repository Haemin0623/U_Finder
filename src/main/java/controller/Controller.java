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
@WebServlet(urlPatterns="*.do",	
	initParams={@WebInitParam(name="config",value="/WEB-INF/command.properties")})
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
	          // =앞에 있는 list.do 는  key
	          // =뒤에 있는 ch14.service.ListAction을 값
	          
	    } catch (IOException e) { 
	    	throw new ServletException(e);
	    } finally {
	    	if (f != null) {
	    		try { 
	    			f.close(); 
	    		} catch(IOException ex) { }
	    	}
	    }
	    
	     Iterator<Object> keyIter = pr.keySet().iterator();
	     // message.do
	     while( keyIter.hasNext() ) {
	          String command = (String)keyIter.next(); 
	          // command : list.do
	          String className = pr.getProperty(command); 
	          // className : ch14.service.ListAction문자
	          try {
	               Class<?> commandClass = Class.forName(className);
	               // commandClass : service.ListAction 클래스
	               Object commandInstance = commandClass.getDeclaredConstructor().newInstance();
	               // commandInstance : service.ListAction객체
	               commandMap.put(command, commandInstance);
	               // commnadMap에는
	               // key가 list.do 문자열
	               // 값이 ListAction 객체
	          } catch (Exception e) {
	               throw new ServletException(e);
	          }
	     }
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
		String view = null;
	    CommandProcess com=null;
	    try { // map key:list.do   ListAction객체
//	  url : http://localhost(ip번호):8080/ch14/list.do
	    	  String command = request.getRequestURI();
	    	  // command : /ch14/list.do
	    	  // request.getCo ntextPath() : /ch14
	    	  
	    	  // request.getContextPath().length()+1 : 6
		      command = command.substring(request.getContextPath().length()+1); 
		      // command는 /ch14/ (길이:6)이 빠진 list.do가 된다
		      
		      System.out.println(command);
	          com = (CommandProcess)commandMap.get(command);
	          // command : key(list.do)로 value인 ListAction 객체를 받아옴
	          // com : service.ListAction객체를 CommandProcess로 형변환
	          System.out.println(com);
	          // 자식 즉 ListAction객체의 requestPro()메소드 실행
	          view = com.requestPro(request, response);
	          // 메서드의 결과로 "list" 문자열이 리턴됨
	          
	    } catch(Throwable e) { throw new ServletException(e); } 
//	 view는 pgm article에 보여줄 프로그램
	    RequestDispatcher dispatcher = request.getRequestDispatcher(view + ".jsp");
	    dispatcher.forward(request, response);
	}
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
    		request.setCharacterEncoding("utf-8");
    		doGet(request, response);
	}
}