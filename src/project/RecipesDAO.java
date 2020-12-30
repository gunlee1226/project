
package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



public class RecipesDAO {
	
	public RecipesVO getRecipes(String name) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		RecipesVO rvo = null;
		int count = 0;
		ResultSet rs = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url, "desr", "desr");

			String query = "SELECT des_name, des_rec, des_img, des_mete,des_summ, kinds_code"
					+ " FROM DESSERT WHERE des_name = ?";
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, name);

			rs = pstmt.executeQuery();
			while (rs.next()) {
			String des_name = rs.getString("des_name");
			String des_rec = rs.getString("des_rec");
			String des_img = rs.getString("des_img");
			String des_mete = rs.getString("des_mete");
			String des_summ = rs.getString("des_summ");
			int kinds_code = rs.getInt("kinds_code");
			
			rvo = new RecipesVO(des_name, des_rec, des_img, des_mete, des_summ, kinds_code);
			}
			 
		} catch (ClassNotFoundException e) {
			System.out.println("error: 드라이버 로딩 실패 - " + e);
		} catch (SQLException e) {
			System.out.println("error:" + e);
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				System.out.println("error:" + e);
			}
		}
		return rvo;

	}
}
