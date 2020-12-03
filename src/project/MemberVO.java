package project;

public class MemberVO {
	private int mem_code;
	private String mem_name;
	private String mem_id;
	private String mem_pwd;
	private String mem_scr;
	private String mem_num;
	private int des_code;
	//게터세터
	public int getMem_code() {
		return mem_code;
	}
	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_scr() {
		return mem_scr;
	}
	public void setMem_scr(String mem_scr) {
		this.mem_scr = mem_scr;
	}
	public String getMem_pwd() {
		return mem_pwd;
	}
	public void setMem_pwd(String mem_pwd) {
		this.mem_pwd = mem_pwd;
	}
	public String getMem_num() {
		return mem_num;
	}
	public void setMem_num(String mem_num) {
		this.mem_num = mem_num;
	}
	public int getDes_code() {
		return des_code;
	}
	public void setDes_code(int des_code) {
		this.des_code = des_code;
	}
	
	@Override
	public String toString() {
		return "MemberVO [mem_code=" + mem_code + ", mem_name=" + mem_name + ", mem_id=" + mem_id + ", mem_scr="
				+ mem_scr + ", mem_pwd=" + mem_pwd + ", mem_num=" + mem_num + ", des_code=" + des_code + "]";
	}
	/**
	 * @param mem_code
	 * @param mem_name
	 * @param mem_id
	 * @param mem_scr
	 * @param mem_pwd
	 * @param mem_num
	 * @param des_code
	 */
	
	public MemberVO(int mem_code, String mem_name, String mem_id, String mem_scr, String mem_pwd, String mem_num,
			int des_code) {
		super();
		this.mem_code = mem_code;
		this.mem_name = mem_name;
		this.mem_id = mem_id;
		this.mem_scr = mem_scr;
		this.mem_pwd = mem_pwd;
		this.mem_num = mem_num;
		this.des_code = des_code;
	}
	public MemberVO(String mem_name, String mem_id, String mem_pwd, String mem_num) {
		super();
		this.mem_name = mem_name;
		this.mem_id = mem_id;
		this.mem_pwd = mem_pwd;
		this.mem_num = mem_num;
	}
	public MemberVO(String mem_id, String mem_pwd) {
		super();
		this.mem_id = mem_id;
		this.mem_pwd = mem_pwd;
	}
	public MemberVO() {}
}
