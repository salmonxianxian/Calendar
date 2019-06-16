package manage.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbutil.DBConn;
import dto.Board;
import manage.dao.face.ManageDao;
import util.Paging;

public class ManageDaoImpl implements ManageDao {
	
	private Connection conn = DBConn.getConnection();
	
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	
	@Override
	public List selectAll(Paging paging) {
		
		System.out.println(paging.toString());
		
		//寃뚯떆湲� 紐⑸줉 議고쉶荑쇰━
		String sql = "";
		sql += "SELECT * FROM (";
		sql += " SELECT rownum rnum, B.* FROM (";
		sql += " SELECT boardno, title, nickname, insertdate FROM board";
		sql += " ORDER BY boardno DESC";
		sql += " ) B";
		sql += " ORDER BY rnum";
		sql += " ) BOARD";
		sql += " WHERE rnum BETWEEN ? AND ?";
		
		List list = new ArrayList();
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, paging.getStartNo());
			ps.setInt(2, paging.getEndNo());
			
			rs = ps.executeQuery();
			
			while (rs.next()) {
				Board board = new Board();
				
				board.setBoardno(rs.getInt("boardno"));
				board.setTitle(rs.getString("title"));
				board.setNickname(rs.getString("nickname"));
				board.setInsertdate(rs.getDate("Insertdate"));
				
				System.out.println(board.toString());
				list.add(board);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				// �옄�썝 �빐�젣
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return list;
		
	}
	
	@Override
	public int selectCntAll() {

		// �쟾泥� 寃뚯떆湲� �닔 議고쉶 荑쇰━
		String sql = "";
		sql += "SELECT count(*)";
		sql += " FROM board";
		
		int totalCount = 0;
		try {
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while (rs.next()) {
				totalCount = rs.getInt(1);
				System.out.println(totalCount);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				// �옄�썝 �빐�젣
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return totalCount;
	}
	
	@Override
	public Board selectBoardByBoardno(Board viewBoard) {
		
		// 寃뚯떆湲� 議고쉶荑쇰━
		String sql = "";
		sql += "SELECT boardno, title, nickname, content, scheduleno, insertdate FROM board";
		sql += " WHERE boardno = ?";
		
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, viewBoard.getBoardno());
			
			rs = ps.executeQuery();
			
			while (rs.next()) {
				
				viewBoard.setBoardno(rs.getInt("boardno"));
				viewBoard.setTitle(rs.getString("title"));
				viewBoard.setNickname(rs.getString("nickname"));
				viewBoard.setContent(rs.getString("content"));
				viewBoard.setScheduleno(rs.getInt("scheduleno"));
				viewBoard.setInsertdate(rs.getDate("Insertdate"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return viewBoard;
		
		
		
	}

	@Override
	public void delete(String names) {
		 String sql = "delete from board where boardno in ("+names+")";
	    
	      
	      try {
	         ps = conn.prepareStatement(sql);
	         ps.executeUpdate();
	         
	      } catch (SQLException e) {
	         
	         e.printStackTrace();
	      } finally {

	         try {
	            if (rs != null)
	               rs.close();
	            if (ps != null)
	               ps.close();
	         } catch (SQLException e) {
	            
	            e.printStackTrace();
	         }
	      }
	}

	


	
	
	
	
}
