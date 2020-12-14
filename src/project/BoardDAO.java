package project;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import sun.awt.CharsetString;

public class BoardDAO {

   public int insert(BoardVO vo) {
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      int count = 0 ;
      
  
      try {
         Class.forName("oracle.jdbc.driver.OracleDriver");

         String url = "jdbc:oracle:thin:@localhost:1521:xe";
         conn = DriverManager.getConnection(url, "desr", "desr");

         String query ="INSERT INTO board VALUES (seq_b_no.nextval,?, sysdate, 1, 1,?, '댓글', ?)";
         pstmt = conn.prepareStatement(query);   

         pstmt.setString(1, vo.getB_title());

         pstmt.setString(2, vo.getB_contents());
         pstmt.setInt(3, vo.getMem_code());
       
         count = pstmt.executeUpdate();

         System.out.println(count + "건 등록");

      } catch (ClassNotFoundException e) {
         System.out.println("error: 드라이버 로딩 실패 - " + e);
      } catch (SQLException e) {
         System.out.println("error:" + e);
      } finally {
         try {
        	
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
         } catch (SQLException e) {
            System.out.println("error:" + e);
         }
      }
      return count;
   }

   
   public void delete(int no) {
      Connection conn = null;
      PreparedStatement pstmt = null;
      int count = 0 ;
      
      try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
         
         String url = "jdbc:oracle:thin:@localhost:1521:xe";
         conn = DriverManager.getConnection(url, "desr", "desr");
         
         String query ="delete from Board where b_no =?";
         pstmt = conn.prepareStatement(query);   
         pstmt.setInt(1, no);
            
         count = pstmt.executeUpdate();
         
         System.out.println(count + "건 삭제");
         
      } catch (ClassNotFoundException e) {
         System.out.println("error: 드라이버 로딩 실패 - " + e);
      } catch (SQLException e) {
         System.out.println("error:" + e);
      } finally {
         try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
         } catch (SQLException e) {
            System.out.println("error:" + e);
         }
      }
   
   }
   

   public void update(BoardVO vo) {
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      int count = 0 ;
	      
	      try {
	         Class.forName("oracle.jdbc.driver.OracleDriver");
	         
	         String url = "jdbc:oracle:thin:@localhost:1521:xe";
	         conn = DriverManager.getConnection(url, "desr", "desr");
	         
	         String query ="update board set b_title =?, b_contents =? where b_no = ?";
	         pstmt = conn.prepareStatement(query);  
	         
	         pstmt.setString(1, vo.getB_title());
	         pstmt.setString(2, vo.getB_contents());
	         pstmt.setInt(3, vo.getB_no());
	            
	         count = pstmt.executeUpdate();
	         
	         System.out.println(count + "건 수정");
	         
	      } catch (ClassNotFoundException e) {
	         System.out.println("error: 드라이버 로딩 실패 - " + e);
	      } catch (SQLException e) {
	         System.out.println("error:" + e);
	      } finally {
	         try {
	            if (pstmt != null) pstmt.close();
	            if (conn != null) conn.close();
	         } catch (SQLException e) {
	            System.out.println("error:" + e);
	         }
	      }
	   
	   }
	   
   public List<BoardVO> getList() {

      // 0. import java.sql.*;
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      List<BoardVO> list = new ArrayList<BoardVO>();

      try {
         // 1. JDBC 드라이버 (Oracle) 로딩
         Class.forName("oracle.jdbc.driver.OracleDriver");

         // 2. Connection 얻어오기
         String url = "jdbc:oracle:thin:@localhost:1521:xe";
         conn = DriverManager.getConnection(url, "desr", "desr");

         // 3. SQL문 준비 / 바인딩 / 실행
         String query = "SELECT b.b_no, b.b_title, b.b_date, b.b_view, b.b_commview , dm.mem_name "
         		+ "from board b Inner join D_MEMBER dm "
         		+ "ON b.MEM_CODE = dm.MEM_CODE order by b.b_no ASC";
         pstmt = conn.prepareStatement(query);   
         rs = pstmt.executeQuery();
         // 4.결과처리
         while(rs.next()) {
        	 

        	int b_no = rs.getInt(1);
            String b_title = rs.getString(2);
            String b_date = rs.getString(3);
            int b_view = rs.getInt(4);
            int b_commview = rs.getInt(5);
            String mem_name = rs.getString(6);
           
               


            BoardVO vo = new BoardVO(b_no, b_title, b_date, b_view, b_commview, mem_name);

            list.add(vo);

         }
      } catch (ClassNotFoundException e) {
         System.out.println("error: 드라이버 로딩 실패 - " + e);
      } catch (SQLException e) {
         System.out.println("error:" + e);
      } finally {
         // 5. 자원정리
         try {
            if (pstmt != null) {
               pstmt.close();
            }
            if (conn != null) {
               conn.close();
            }
         } catch (SQLException e) {
            System.out.println("error:" + e);
         }

      }

      return list;

   }


public BoardVO getBoard(int no) {
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    BoardVO vo = null;
    int count = 0 ;
    
    try {
       Class.forName("oracle.jdbc.driver.OracleDriver");
       
       String url = "jdbc:oracle:thin:@localhost:1521:xe";
       conn = DriverManager.getConnection(url, "desr", "desr");
       
       String query = "select b.b_no, b.b_title, b.b_contents, b.b_view, b.b_date, b.MEM_code, d.MEM_NAME\r\n"
       		+ "from board b, d_member d \r\n"
       		+ "where b.mem_code = d.mem_code \r\n"
       		+ "and b.b_no = ?";
       pstmt = conn.prepareStatement(query);  
       
       pstmt.setInt(1, no);
          
       rs = pstmt.executeQuery();
       while(rs.next()) {
    	   String b_title = rs.getString("b_title");
    	   String b_contents = rs.getString("b_contents");
    	   int b_view = rs.getInt("b_view");
    	   String b_date = rs.getString("b_date");
    	   int mem_code = rs.getInt("mem_code");
    	   String mem_name = rs.getString("mem_name");
    	   
    	   vo = new BoardVO(b_title, b_contents, b_view, b_date, mem_code, mem_name);
    	   
       }
    } catch (ClassNotFoundException e) {
       System.out.println("error: 드라이버 로딩 실패 - " + e);
    } catch (SQLException e) {
       System.out.println("error:" + e);
    } finally {
       try {
          if (pstmt != null) pstmt.close();
          if (conn != null) conn.close();
       } catch (SQLException e) {
          System.out.println("error:" + e);
       }
    }
	return vo;
 
 }
}