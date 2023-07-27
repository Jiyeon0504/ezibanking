
package kr.ac.kopo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.ac.kopo.account.BankVO;
import kr.ac.kopo.framework.ConnectionFactory;

public class BankDAO {
	public List<BankVO> getBankList(BankVO vo) {

		List<BankVO> bankList = new ArrayList<>();
//		      List<AccountVO> accountList = new ArrayList<AccountVO>();

		BankVO bank = null;

		StringBuilder sql = new StringBuilder();
		sql.append("select * from bank");
		sql.append(" order by bankname desc");

		try (Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());) {
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				bank = new BankVO();
				bank.setBankcode(rs.getString("BANKCODE"));
				bank.setBankname(rs.getString("BANKNAME"));
				bankList.add(bank);
				System.out.println(bankList);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return bankList;
	}
}
