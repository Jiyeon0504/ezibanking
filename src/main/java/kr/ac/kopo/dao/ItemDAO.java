package kr.ac.kopo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.ac.kopo.account.ItemVO;
import kr.ac.kopo.framework.ConnectionFactory;

public class ItemDAO {
	
	
	public ItemDAO() {

	}
	
	
	public List<ItemVO> getItemList(ItemVO vo) {
		
		List<ItemVO> itemList = new ArrayList<>();
		
		ItemVO item = null;
		
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * FROM BK_ITEM order by item_name desc");
		try (Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());) {
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				item = new ItemVO();
				item.setItem_name(rs.getString("ITEM_NAME"));
				item.setItem_content(rs.getString("ITEM_CONTENT"));
				item.setItem_rate(rs.getDouble("ITEM_RATE"));
				item.setItem_type(rs.getInt("ITEM_TYPE"));
				
				itemList.add(item);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return itemList;
	}

}
