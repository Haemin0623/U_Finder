package model;

public class Review {
    private int reviewno;
    private int movieno;
    private int memberno;
    private String content;
    private int movielike;
    private String del;
    private String moviename;	// 작성리뷰에서 번호로 영화이름 가져올때 쓸 moviename
    
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
}
