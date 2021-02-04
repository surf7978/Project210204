package co.micol.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.micol.VO.textVO;
import co.micol.common.DAO;

public class textDAO extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs;
	
//전체조회	
	public ArrayList<textVO> selectList(){
		String sql="SELECT * FROM text";
		try {
			psmt = conn.prepareStatement(sql);

		} catch (Exception e) {
		} finally {
			close();
		}
		
		return null;
		
	}
	
//선택조회
	public textVO select(textVO vo){
		String sql="SELECT * FROM text WHERE tNUMBER=?";
		try {
			psmt = conn.prepareStatement(sql);

		} catch (Exception e) {
		} finally {
			close();
		}
		
		return null;
	}

	
//등록
	public int insert(textVO vo) {
		String sql="";
		int n =0;
		try {
			psmt = conn.prepareStatement(sql);

		} catch (Exception e) {
		} finally {
			close();
		}
		
		return n;
	}
//수정
	public int update(textVO vo) {
		String sql="";
		int n =0;
		try {
			psmt = conn.prepareStatement(sql);

		} catch (Exception e) {
		} finally {
			close();
		}
		
		return n;
	}
//삭제
	public int delete(textVO vo) {
		String sql="";
		int n =0;
		try {
			psmt = conn.prepareStatement(sql);

		} catch (Exception e) {
		} finally {
			close();
		}
		
		return n;
	}
	
	private void close() {
		try {
			conn.close();
			if(rs != null) {rs.close();}
			if(psmt != null) {psmt.close();}
			if(conn != null) {conn.close();}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
