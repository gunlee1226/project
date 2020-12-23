
package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



public class RecipesDAO {
	public int recipes(RecipesVO rvo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int count = 0;
		ResultSet rs = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url, "desr", "desr");

			String query = "SELECT des_name, des_rec, des_img, des_mete,des_summ, kinds_code"
					+ " FROM DESSERT WHERE des_name = ?";
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, rvo.getDes_name());

			rs = pstmt.executeQuery();
			while (rs.next()) {
				
			rvo.setDes_name(rs.getString("des_name"));
			rvo.setDes_rec(rs.getString("des_rec"));
			rvo.setDes_img(rs.getString("des_img"));
			rvo.setDes_mete(rs.getString("des_mete"));
			rvo.setDes_summ(rs.getString("des_summ"));
			rvo.setKinds_code(rs.getString("kinds_code"));
			
			
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
		return count;

	}
}
