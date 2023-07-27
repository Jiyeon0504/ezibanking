package kr.ac.kopo.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.ac.kopo.board.BoardVO;
import kr.ac.kopo.framework.ConnectionFactory;

public class BoardDAO {

	public List<BoardVO> getBoardList() {

		StringBuilder sql = new StringBuilder();
		sql.append("select * ");
		sql.append(" from notice ");

		List<BoardVO> boardList = new ArrayList<BoardVO>();
		try (Connection conn = new ConnectionFactory().getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());) {

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardVO board = new BoardVO();
				board.setNo(rs.getInt("No"));
				board.setTitle(rs.getString("TITLE"));
				board.setId(rs.getString("WRITER"));
				board.setContent(rs.getString("CONTENT"));
				board.setRegDate(rs.getDate("REGDATE"));
				board.setViews(rs.getInt("VIEWS"));
				boardList.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return boardList;
	}
	
	
	
	public BoardVO writeqna(BoardVO vo) throws Exception {
		
	    String insertSql = "insert into QNA(qa_no, qa_title, qa_content, qa_date, id, views) VALUES"
	            + "(seq_qna_no.NEXTVAL, ?, ?, ?, ?, 0)";

	    String updateSql = "update QNA set views = views + 1 where qa_no = ?";
	    BoardVO board = null;
	    try (Connection conn = new ConnectionFactory().getConnection();
	         PreparedStatement insertStmt = conn.prepareStatement(insertSql);
	         PreparedStatement updateStmt = conn.prepareStatement(updateSql, ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE)) {

	        // 새로운 게시물 삽입
	        insertStmt.setString(1, board.getTitle());
	        insertStmt.setString(2, board.getContent());
//	        insertStmt.setDate(3, (Date) board.getRegDate());
	        insertStmt.setString(4, board.getId());
	        insertStmt.executeUpdate();

	        // 방금 삽입된 게시물의 조회수 증가
	        try (ResultSet generatedKeys = insertStmt.getGeneratedKeys()) {
	            if (generatedKeys.next()) {
	                int qaNo = generatedKeys.getInt(1);
	                updateStmt.setInt(1, qaNo);
	                updateStmt.executeUpdate();
	            }
	        }

	        System.out.println("글 등록 성공");
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
		return board;
	}
	
	
	
	
}
