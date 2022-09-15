package dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.Movie;

public class MovieDao {
	
	// 싱글턴 객체 생성
	private static MovieDao instance = new MovieDao();
	
	// 유일한 생성자 private으로 객체생성 막음
	private MovieDao() {
	}
	
	// 싱글턴 객체 얻기(부르기)
	public static MovieDao getInstance() {
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

	public List<Movie> search(String searchWord) {
		return session.selectList("moviens.search", searchWord);
	}
}
