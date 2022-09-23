package dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.Movie;
import model.Pick;

public class PickDao {
	
	// 싱글턴 객체 생성
	private static PickDao instance = new PickDao();
	
	// 유일한 생성자 private으로 객체생성 막음
	private PickDao() {
	}
	
	// 싱글턴 객체 얻기(부르기)
	public static PickDao getInstance() {
		return instance;
	}
	
	// mybatis 사용할 객체
	private static SqlSession session;
	
	static {	// 클래스 초기화 블럭
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
		}catch (Exception e) {
			System.out.println("초기화 에러 " + e.getMessage());
		}
	}
	// 찜한 영화리스트 poster명 받아오기
	public List<String> pickPoster(String id) {
		return session.selectList("pickns.pickPoster",id);
	}
	// 찜리스트 페이징용
	public List<Pick> pickList(int startRow, int endRow) {
		Map<String, Integer> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return session.selectList("pickns.list", map);
	}

	// 회원 한명의 찜리스트
	public List<Movie> pickMovie(String id) {
		return session.selectList("pickns.memberPickList", id);
	}
<<<<<<< HEAD
	// 특정 회원의 찜 총 갯수(페이징용)
	public int total(String id) {
		return (int) session.selectOne("pickns.getTotal",id);
	}

	public List<Pick> pickListPage(int startRow, int endRow, String id) {
		Map<String, Object> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("id", id);
		
		return session.selectList("pickns.pickListPage", map);
	}
=======

	public Pick getPick(String id, int movieno) {
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("movieno", movieno);
		return (Pick) session.selectOne("pickns.getPick", map);
	}

	public int delPcik(int movieno, int memberno) {
		Map<String, Object> map = new HashMap<>();
		map.put("movieno", movieno);
		map.put("memberno", memberno);
		return session.delete("pickns.delPick", map);
	}


>>>>>>> 5342404 (찜 작업중)
}
