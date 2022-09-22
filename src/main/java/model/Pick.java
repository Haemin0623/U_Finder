package model;

public class Pick {
	private int pickno;
    private int movieno;
    private int memberno;
    private String poster;
    
	public int getPickno() {
		return pickno;
	}
	public void setPickno(int pickno) {
		this.pickno = pickno;
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
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}    
}
