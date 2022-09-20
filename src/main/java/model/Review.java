package model;

public class Review {
    private int reviewno;
    private int movieno;
    private int memberno;
    private String content;
    private int movielike;
    private String del;
    
    private String moviename;	// 작성리뷰에서 번호로 영화이름 가져올때 쓸 moviename
    private String nickname;	// 작성리뷰에서 해당영화의 리뷰에 대한 member의 닉네임 가져올 때 사용.
    private String id;			// 작성리뷰에서 리뷰 삭제시 사용
    
	public int getReviewno() {
		return reviewno;
	}
	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}
	public int getMovieno() {
		return movieno;
	}
	public void setMovieno(int movieno) {
		this.movieno = movieno;
	}
	public int getMemberno() {
		return memberno;
	}
	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getMovielike() {
		return movielike;
	}
	public void setMovielike(int movielike) {
		this.movielike = movielike;
	}
	public String getDel() {
		return del;
	}
	public void setDel(String del) {
		this.del = del;
	}
	public String getMoviename() {
		return moviename;
	}
	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
}
