package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



public class MainDAO {
//	public List<DessertVO> getList(int kinds_code) {
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		List<DessertVO> dlist = new ArrayList<DessertVO>();
//	
//
//		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//
//			String url = "jdbc:oracle:thin:@localhost:1521:xe";
//			conn = DriverManager.getConnection(url, "desr", "desr");
//
//			String query = "SELECT * FROM \n"
//							+ "(select des_name, des_img from dessert where kinds_code = ? \n"
//							+ "order by dbms_random.value)\n"
//							+ "dessert where rownum = 1";
//			pstmt = conn.prepareStatement(query);
//			
//			pstmt.setInt(1, kinds_code);
//			
//			rs = pstmt.executeQuery();
//			while (rs.next()) {
//				
//				String des_name = rs.getString("des_name");
//				String des_img = rs.getString("des_img");
//
//				DessertVO vo = new DessertVO(des_name, des_img);
//				dlist.add(vo);
//
//			}
//		} catch (ClassNotFoundException e) {
//			System.out.println("error: 드라이버 로딩 실패 - " + e);
//		} catch (SQLException e) {
//			System.out.println("error:" + e);
//		} finally {
//			try {
//				if (pstmt != null)
//					pstmt.close();
//				if (conn != null)
//					conn.close();
//			} catch (SQLException e) {
//				System.out.println("error:" + e);
//			}
//		}
//		return dlist;
//
//	}
	
	public MainVO getDessert(int name1,int name2,int name3) {
		Connection conn = null;
		PreparedStatement pstmt1 = null;
		ResultSet rs1 = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs2 = null;
		PreparedStatement pstmt3 = null;
		ResultSet rs3 = null;
		MainVO vo = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url, "desr", "desr");

			String query1 = "SELECT * FROM \n"
					+ "(select des_name, des_img from dessert where kinds_code = ? \n"
					+ "order by dbms_random.value)\n"
					+ "dessert where rownum = 1";
			pstmt1 = conn.prepareStatement(query1);
			pstmt1.setInt(1, name1);
			rs1 = pstmt1.executeQuery();
			
			String query2 = "SELECT * FROM \n"
					+ "(select des_name, des_img from dessert where kinds_code = ? \n"
					+ "order by dbms_random.value)\n"
					+ "dessert where rownum = 1";
			pstmt2 = conn.prepareStatement(query2);
			pstmt2.setInt(1, name2);
			rs2 = pstmt2.executeQuery();

			String query3 = "SELECT * FROM \n"
					+ "(select des_name, des_img from dessert where kinds_code = ? \n"
					+ "order by dbms_random.value)\n"
					+ "dessert where rownum = 1";
			pstmt3 = conn.prepareStatement(query3);
			pstmt3.setInt(1, name3);
			rs3 = pstmt3.executeQuery();
			
			if (rs1.next() && rs2.next() && rs3.next()) {
		         
	            String des_name = rs1.getString("des_name");
	            String des_img = rs1.getString("des_img");
	         
	            String des_name2 = rs2.getString("des_name");
	            String des_img2 = rs2.getString("des_img");

	            String des_name3 = rs3.getString("des_name");
	            String des_img3 = rs3.getString("des_img");


	         vo = new MainVO(des_name, des_img, des_name2, des_img2, des_name3, des_img3);
	      
	      }
			
		} catch (ClassNotFoundException e) {
			System.out.println("error: 드라이버 로딩 실패 - " + e);
		} catch (SQLException e) {
			System.out.println("error:" + e);
		} finally {
			try {
				if (pstmt1 != null)
					pstmt1.close();
				if (pstmt2 != null)
					pstmt2.close();
				if (pstmt3 != null)
					pstmt3.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				System.out.println("error:" + e);
			}
		}

		return vo;
	}
}