package kr.ac.kopo.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kr.ac.kopo.account.AccountVO;
import kr.ac.kopo.account.TransactionVO;
import kr.ac.kopo.framework.ConnectionFactory;

public class TransactionDAO {

	public int bankSelect(String bankcd, String senderAccNo, String recieverAccNo, long amount) throws Exception {
		int returnVal = 0;
		switch (bankcd) {
		case "0504":
			returnVal = this.transfer(senderAccNo, recieverAccNo, amount);
			break;

		}
		return returnVal;
	}

	public int transfer(String senderAccNo, String recieverAccNo, long amount) throws Exception {
		Connection conn = null;
		CallableStatement callableStatment = null;

		StringBuilder sql = new StringBuilder();
		try {
			conn = new ConnectionFactory().getConnection();

			conn.setAutoCommit(false);

			sql.append("{call transfer(?, ?, ?)}");
			callableStatment = conn.prepareCall(sql.toString());

			callableStatment.setString(1, senderAccNo);
			callableStatment.setString(2, recieverAccNo);
			callableStatment.setLong(3, amount);

			callableStatment.executeUpdate();
			conn.commit();

			return 1;

		} catch (SQLException e) {
			conn.rollback();
			return 0;

		} finally {
			if (callableStatment != null) {
				callableStatment.close();
			}
			if (conn != null) {
				conn.close();
			}
		}

	}

	public String getName(String acc_No) {
		StringBuilder sql = new StringBuilder();
		String userName = null;
		sql.append("SELECT a.user_id, b.user_name" + " FROM account a" + " JOIN bk_user b ON a.user_id = b.user_id"
				+ " where a.acc_no = ? ");
		try (Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());) {
			pstmt.setString(1, acc_No);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				userName = rs.getString("user_name");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return userName;
	}

	public void transactionHistory(TransactionVO vo) {
		StringBuilder sql = new StringBuilder();
		sql.append(
				"insert into history(TS_NO, ACC_NO, BANKCODE, SENDER,  T_COMMENT, T_TYPE, T_AMOUNT, RC_BANKCODE, RC_ACCOUNT, RECEIVER) ");
		sql.append(" values(TS_NO.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?) ");

		int idx = 1;

		try (Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());) {

			pstmt.setString(idx++, vo.getAcc_no());
			pstmt.setString(idx++, vo.getBankcode());
			pstmt.setString(idx++, vo.getSender());
			pstmt.setString(idx++, vo.getT_comment());
			pstmt.setString(idx++, vo.getT_type());
			pstmt.setLong(idx++, vo.getT_amount());
//	         pstmt.setLong(idx++, vo.getBalance());
			pstmt.setString(idx++, vo.getRc_bankcode());
			pstmt.setString(idx++, vo.getRc_account());
			pstmt.setString(idx++, this.getName(vo.getRc_account()));

			System.out.println(vo.getAcc_no());
			System.out.println(vo.getBankcode());
			System.out.println(vo.getRc_account());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	public void depositHistory(TransactionVO vo) {
		StringBuilder sql = new StringBuilder();
		sql.append(
				"insert into history(TS_NO, ACC_NO, BANKCODE, SENDER,  T_COMMENT, T_TYPE, T_AMOUNT, RC_BANKCODE, RC_ACCOUNT, RECEIVER) ");
		sql.append(" values(TS_NO.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?) ");
		
		int idx = 1;
		
		try (Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());) {
			
			pstmt.setString(idx++, vo.getRc_account() );
			pstmt.setString(idx++, vo.getBankcode());
			pstmt.setString(idx++, this.getName(vo.getRc_account()));
			pstmt.setString(idx++, vo.getT_comment());
			pstmt.setString(idx++, "ют╠щ");
			pstmt.setLong(idx++, vo.getT_amount());
//	         pstmt.setLong(idx++, vo.getBalance());
			pstmt.setString(idx++, vo.getRc_bankcode());
			pstmt.setString(idx++, vo.getAcc_no());
			pstmt.setString(idx++, vo.getSender());
			
			System.out.println(vo.getAcc_no());
			System.out.println(vo.getBankcode());
			System.out.println(vo.getRc_account());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public List<TransactionVO> getTransactList(TransactionVO vo) {

		List<TransactionVO> transactlist = new ArrayList<>();

		TransactionVO transact = null;

		StringBuilder sql = new StringBuilder();
		sql.append("select * from history where acc_no = ? order by ts_no desc");

		try (Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql.toString());) {

			stmt.setString(1, vo.getAcc_no());

			System.out.println(vo.getAcc_no());

			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()) {
				transact = new TransactionVO();
				transact.setTs_no(rs.getInt("ts_no"));
				transact.setT_date(rs.getTimestamp("t_date"));
				transact.setT_comment(rs.getString("t_comment"));
				transact.setBankcode(rs.getString("bankcode"));
				transact.setT_type(rs.getString("t_type"));
				transact.setT_amount(rs.getLong("t_amount"));
				transact.setReceiver(rs.getString("receiver"));

				transactlist.add(transact);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return transactlist;
	}

}









