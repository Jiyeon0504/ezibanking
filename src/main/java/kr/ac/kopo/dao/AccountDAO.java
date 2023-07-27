package kr.ac.kopo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.ac.kopo.account.AccountVO;
import kr.ac.kopo.framework.ConnectionFactory;

public class AccountDAO {

	public void insertAccount(AccountVO vo) {
		StringBuilder sql = new StringBuilder();
		sql.append(
				"insert into account(acc_no, user_id, ac_password, bankcode, balance, item_name, ac_date, slp_ac, acc_nickname ) values (?, ?, ?, ?, ?, ?, ?, ?, ?) ");
		try (Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql.toString());) {

			stmt.setString(1, vo.getAccount());
			stmt.setString(2, vo.getUser_id());
			stmt.setString(3, vo.getAc_password());
			stmt.setString(4, vo.getBankcode());
			stmt.setLong(5, vo.getBalance());
			stmt.setString(6, vo.getItem_name());
			stmt.setDate(7, new java.sql.Date(vo.getAc_date().getTime()));
			stmt.setString(8, vo.getSlp_ac());
			stmt.setString(9, vo.getAcc_nickname());

			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public List<AccountVO> getAccountList(AccountVO vo) {

		List<AccountVO> accountList = new ArrayList<>();
//		      List<AccountVO> accountList = new ArrayList<AccountVO>();

		AccountVO account = null;

		StringBuilder sql = new StringBuilder();
		sql.append("select * from account where user_id = ?");

		try (Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql.toString());) {

			stmt.setString(1, vo.getUser_id());
			
			System.out.println(vo.getUser_id());
			
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				account = new AccountVO();
				account.setAccount(rs.getString("acc_no"));
				account.setUser_id(rs.getString("user_id"));
				account.setAc_password(rs.getString("ac_password"));
				account.setBankcode(rs.getString("bankcode"));
				account.setBalance(rs.getLong("balance"));
				account.setItem_name(rs.getString("item_name"));
				account.setAc_date(rs.getDate("ac_date"));
				account.setSlp_ac((rs.getString("slp_ac")));
				account.setAcc_nickname(rs.getString("acc_nickname"));
				accountList.add(account);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return accountList;
	}
	
	
	
	
	

	public void closeAccount(AccountVO vo) {

		StringBuilder sql = new StringBuilder();
		sql.append("delete from account where acc_no = ?");
		try (Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql.toString());) {
			stmt.setString(1, vo.getAccount());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
