package bean;

public class event {
	private String id;
	private String t_name;
	private String s_name;
	private String date;
	private String time;
	private String didian;
	private String beizhu;

	public event(){
		this.id = null;
		this.t_name = null;
		this.s_name = null;
		this.date = null;
		this.time = null;
		this.didian = null;
		this.beizhu = null;
	}
	
	public void setid(String s) {
		this.id = s;
	}
	
	public String getid() {
		return id;
	}
	
	public void sett_name(String s) {
		this.t_name = s;
	}
	
	public String gett_name() {
		return t_name;
	}
	
	public void sets_name(String s) {
		this.s_name = s;
	}
	
	public String gets_name() {
		return s_name;
	}
	
	public void setdate(String s) {
		this.date = s;
	}
	
	public String getdate() {
		return date;
	}
	
	public void settime(String s) {
		this.time = s;
	}
	
	public String gettime() {
		return time;
	}
	
	public void setdidian(String s) {
		this.didian = s;
	}
	
	public String getdidian() {
		return didian;
	}
	
	public void setbeizhu(String s) {
		this.beizhu = s;
	}
	
	public String getbeizhu() {
		return beizhu;
	}
}
