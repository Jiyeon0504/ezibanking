package kr.ac.kopo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import kr.ac.kopo.framework.ConnectionFactory;
import kr.ac.kopo.user.UserVO;

public class UserDAO {

	public UserVO login(UserVO login) throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "hr";
		String pass = "hr";

		StringBuilder sql = new StringBuilder();
		sql.append("select user_id, user_password, user_name, user_birth, user_gender, user_email, user_phone, user_zipcode, user_address, user_address2, opbk_agree ");
		sql.append("  from bk_user ");
		sql.append(" where user_id = ? and user_password = ? ");

		try (Connection conn = DriverManager.getConnection(url, user, pass);
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());) {

			pstmt.setString(1, login.getUser_id());
			pstmt.setString(2, login.getUser_password());
			
			System.out.println(login.getUser_id());
			System.out.println(login.getUser_password());
			
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {

				UserVO loginUser = new UserVO();
				loginUser.setUser_id(rs.getString("user_id"));
				loginUser.setUser_password(rs.getString("user_password"));
				loginUser.setUser_name(rs.getString("user_name"));
				loginUser.setUser_birth(rs.getString("user_birth"));
				loginUser.setUser_gender(rs.getString("user_gender"));
				loginUser.setUser_email(rs.getString("user_email"));
				loginUser.setUser_phone(rs.getString("user_phone"));
				loginUser.setUser_zipcode(rs.getString("user_zipcode"));
				loginUser.setUser_address(rs.getString("user_address"));
				loginUser.setUser_address2(rs.getString("user_address2"));
				loginUser.setOpbk_agree(rs.getString("opbk_agree"));
				return loginUser;
			}
		}
		return null;
	}
	
	
	public void insertUser(UserVO member) { // 회원 등록

		StringBuilder sql = new StringBuilder();
		sql.append(
				"insert into bk_user(user_id, user_password, user_name, user_birth, user_gender, user_email, user_phone, user_zipcode, user_address, user_address2, opbk_agree ) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, '0') ");

		try (Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());) {
			 pstmt.setString(1, member.getUser_id());
			 pstmt.setString(2, member.getUser_password());
			 pstmt.setString(3, member.getUser_name());
			 pstmt.setString(4, member.getUser_birth());
			 pstmt.setString(5, member.getUser_gender());
			 pstmt.setString(6, member.getUser_email());
			 pstmt.setString(7, member.getUser_phone());
			 pstmt.setString(8, member.getUser_zipcode());
			 pstmt.setString(9, member.getUser_address());
			 pstmt.setString(10, member.getUser_address2());
				/*
				 * pstmt.setString(11, member.getOpbk_agree());
				 */
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
