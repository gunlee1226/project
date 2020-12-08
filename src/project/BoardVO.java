package project;

import java.util.ArrayList;
import java.util.List;

public class BoardVO {

   private int b_no;
   private String b_title;
   private String b_date;
   private String b_contents;
   private int b_view;
   private int b_commview;
   private String b_comment;
   private String MEM_NAME;
   private int MEM_CODE;


   public BoardVO() {}
   
   public BoardVO (String b_title, String b_contents) {
	   this.b_title = b_title;
	   this.b_contents = b_contents;

   }

   public BoardVO(int b_no, String b_title, String b_date, int b_view, int b_commview, String MEM_NAME) {
      super();
      this.b_no = b_no;
      this.b_title = b_title;
      this.b_date = b_date;
      this.b_view = b_view;
      this.b_commview = b_commview;
      this.MEM_NAME = MEM_NAME;
    
   }
   
   public BoardVO(String b_title, String b_contents , int b_view, String b_date,int MEM_CODE, String MEM_NAME) {
	      super();
	      this.b_title = b_title;
	      this.b_date = b_date;
	      this.b_contents = b_contents;
	      this.b_view = b_view;
	      this.MEM_CODE = MEM_CODE;
	      this.MEM_NAME = MEM_NAME;
	    
	   }

   
  

public int getMEM_CODE() {
	return MEM_CODE;
   }
	public void setMEM_CODE(int MEM_CODE) {
		this.MEM_CODE = MEM_CODE;
	}

   
   public String getMEM_NAME() {
	return MEM_NAME;
   }
	public void setMEM_NAME(String MEM_NAME) {
		this.MEM_NAME = MEM_NAME;
	}


public int getB_no() {
      return b_no;
   }



   public void setB_no(int b_no) {
      this.b_no = b_no;
   }



   public String getB_title() {
      return b_title;
   }



   public void setB_title(String b_title) {
      this.b_title = b_title;
   }



   public String getB_date() {
      return b_date;
   }



   public void setB_date(String b_date) {
      this.b_date = b_date;
   }



   public String getB_contents() {
      return b_contents;
   }



   public void setB_contents(String b_contents) {
      this.b_contents = b_contents;
   }



   public int getB_view() {
      return b_view;
   }



   public void setB_view(int b_view) {
      this.b_view = b_view;
   }



   public int getB_commview() {
      return b_commview;
   }



   public void setB_commview(int b_commview) {
      this.b_commview = b_commview;
   }



   public String getB_comment() {
      return b_comment;
   }



   public void setB_comment(String b_comment) {
      this.b_comment = b_comment;
   }



   @Override
   public String toString() {
      return "BoardVO "+"b_no"+"b_title" + "b_date"+"b_contents"+"b_view"+"b_commview"+"b_comment" + "\n";
   }
} 