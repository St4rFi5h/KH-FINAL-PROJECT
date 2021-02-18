package kr.or.eutchapedia.movierate.entity;

public class MovierateVo {
	private String docid;
	private String title;
	private String titleOrg;
	private String nation;
	private String runningtime;
	private String rating;
	private String prodyear;
	private String posteruri;
	private String genre;
	private String plot;
	private String movieTrailer;
	private int movieHitCount;
	
	
	
	public MovieInfo(String docid, String title, String titleOrg, String nation, String runningtime, String rating,
			String prodyear, String posteruri, String genre, String plot, String movieTrailer, int movieHitCount) {
		super();
		this.docid = docid;
		this.title = title;
		this.titleOrg = titleOrg;
		this.nation = nation;
		this.runningtime = runningtime;
		this.rating = rating;
		this.prodyear = prodyear;
		this.posteruri = posteruri;
		this.genre = genre;
		this.plot = plot;
		this.movieTrailer = movieTrailer;
		this.movieHitCount = movieHitCount;
	}
	public String getDocid() {
		return docid;
	}
	public void setDocid(String docid) {
		this.docid = docid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTitleOrg() {
		return titleOrg;
	}
	public void setTitleOrg(String titleOrg) {
		this.titleOrg = titleOrg;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getRunningtime() {
		return runningtime;
	}
	public void setRunningtime(String runningtime) {
		this.runningtime = runningtime;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getProdyear() {
		return prodyear;
	}
	public void setProdyear(String prodyear) {
		this.prodyear = prodyear;
	}
	public String getPosteruri() {
		return posteruri;
	}
	public void setPosteruri(String posteruri) {
		this.posteruri = posteruri;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getPlot() {
		return plot;
	}
	public void setPlot(String plot) {
		this.plot = plot;
	}
	public String getMovieTrailer() {
		return movieTrailer;
	}
	public void setMovieTrailer(String movieTrailer) {
		this.movieTrailer = movieTrailer;
	}
	public int getMovieHitCount() {
		return movieHitCount;
	}
	public void setMovieHitCount(int movieHitCount) {
		this.movieHitCount = movieHitCount;
	}
	
}
