package project;

public class RecipesVO {
	private int des_code;
	private String des_name;
	private String des_rec;
	private String des_comment;
	private String des_img;
	private String des_mete;
	private String des_summ;
	private String des_link1;
	private String des_link2;
	private String des_link3;
	
	
	
	
	
	
//	이미지.
public RecipesVO(String des_name, String des_img) {
		super();
		this.des_name = des_name;
		this.des_img = des_img;
	}

	public RecipesVO() {
	
}

	// getter & setter
	public int getDes_code() {
		return des_code;
	}
	public void setDes_code(int des_code) {
		this.des_code = des_code;
	}
	public String getDes_name() {
		return des_name;
	}
	public void setDes_name(String des_name) {
		this.des_name = des_name;
	}
	public String getDes_rec() {
		return des_rec;
	}
	public void setDes_rec(String des_rec) {
		this.des_rec = des_rec;
	}
	public String getDes_comment() {
		return des_comment;
	}
	public void setDes_comment(String des_comment) {
		this.des_comment = des_comment;
	}
	public String getDes_img() {
		return des_img;
	}
	public void setDes_img(String des_img) {
		this.des_img = des_img;
	}
	public String getDes_mete() {
		return des_mete;
	}
	public void setDes_mete(String des_mete) {
		this.des_mete = des_mete;
	}
	public String getDes_summ() {
		return des_summ;
	}
	public void setDes_summ(String des_summ) {
		this.des_summ = des_summ;
	}
	public String getDes_link1() {
		return des_link1;
	}
	public void setDes_link1(String des_link1) {
		this.des_link1 = des_link1;
	}
	public String getDes_link2() {
		return des_link2;
	}
	public void setDes_link2(String des_link2) {
		this.des_link2 = des_link2;
	}
	public String getDes_link3() {
		return des_link3;
	}
	public void setDes_link3(String des_link3) {
		this.des_link3 = des_link3;
	}

}