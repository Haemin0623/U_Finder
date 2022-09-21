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

public class MemberDao {
	
	// 싱글턴 객체 생성
	private static MemberDao instance = new MemberDao();
	
	// 유일한 생성자 private으로 객체생성 막음
	private MemberDao() {
	}
	
	// 싱글턴 객체 얻기(부르기)
	public static MemberDao getInstance() {
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
	// joinResult, confirmId, loginResult : id로 회원정보 찾기
	public Member select(String id) {
		return (Member) session.selectOne("memberns.select", id);
	}
	
	// confirmNick_nm : 닉네임중복확인
	public Member confirmNick(String nickname) {
		return (Member) session.selectOne("memberns.confirmNick", nickname);
	}
	
	// joinResult: 회원가입
	public int insert(Member member) {
		return session.insert("memberns.insert", member);
	}

	// DB에 등록된 회원 수 (페이징 용)
	public int total() {
		return (int) session.selectOne("memberns.getTotal");
	}

	// 모든 회원목록 가져오기
	public List<Member> memberList(int startRow, int endRow) {
		Map<String, Integer> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return session.selectList("memberns.list", map);	// startRow, endRow 매개변수 2개를 보낼 수 없어서 map으로 묶어서 보냄
	}

	// id로 비번초기화
	public int resetPassword(String id) {
		return session.update("memberns.reset", id);
	}
	//회원정보 수정
	public int updateInfo(Member member) {
		return session.update("memberns.updateInfo", member);
	}
}
