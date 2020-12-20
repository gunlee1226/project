package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RecipesDAO {
	public RecipesVO getRecipes(String title, String img) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		RecipesVO vo = null;
		int count = 0;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url, "desr", "desr");

			String query = "SELECT des_name, des_img FROM dessert";
			pstmt = conn.prepareStatement(query);

			rs = pstmt.executeQuery();
			vo = new RecipesVO();
			while (rs.next()) {
				
				String des_name = rs.getString("des_name");
				String des_img = rs.getString("des_img");

				vo = new RecipesVO(des_name, des_img);

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
		return vo;

	}
}
