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
	// 검색 결과 도출
	public List<Movie> search(String searchWord) {
		return session.selectList("moviens.search", searchWord);
	}
	
	// 영화 상세 정보 (영화번호로 해당 영화 객체 반환)
	public Movie show(int movieno) {
		return (Movie) session.selectOne("moviens.show", movieno);
	}
	// DB에 등록된 총 영화 갯수 (페이징 용)
	public int total() {
		return (int) session.selectOne("moviens.getTotal");
	}
	
	// DB에서 영화 리스트 뽑아오기
	public List<Movie> movieList(int startRow, int endRow) {
		Map<String, Integer> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return session.selectList("moviens.list", map);	// startRow, endRow 매개변수 2개를 보낼 수 없어서 map으로 묶어서 보냄
	}

	// DB에 영화정보 넣기
	public int insert(Movie mv) {
		return session.insert("moviens.insert", mv);
	}
	
	// DB 영화정보 수정
	public int updateMovie(Movie mv) {
		return session.update("moviens.update", mv);
	}
	
	// 조회수 TOP10 조회
	public List<Movie> hotMovie() {
		return session.selectList("moviens.hotList");
	}
}
