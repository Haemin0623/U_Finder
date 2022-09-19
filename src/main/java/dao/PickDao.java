package dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.Member;
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

	public List<Member> pickList(int startRow, int endRow) {
		Map<String, Integer> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return session.selectList("pickns.list", map);
	}
}
