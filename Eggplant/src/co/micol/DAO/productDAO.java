package co.micol.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.micol.VO.productVO;
import co.micol.common.DAO;

public class productDAO extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs;

//전체조회	
	public ArrayList<productVO> selectList() {
		String sql = "SELECT * FROM product ORDER BY pname";
		try {
			psmt = conn.prepareStatement(sql);

		} catch (Exception e) {
		} finally {
			close();
		}

		return null;

	}

//선택조회
	public productVO select(productVO vo) {
		String sql = "SELECT * FROM product WHERE pname=?";
		try {
			psmt = conn.prepareStatement(sql);

		} catch (Exception e) {
		} finally {
			close();
		}
		return null;
	}

//등록
	public int insert(productVO vo) {
		String sql = "INSERT INTO product (pname, pmodel, pimage, pagency, pcolor, pvolume) VALUES (?,?,?,?,?,?)";
		int n = 0;

		try {
			psmt = conn.prepareStatement(sql);

		} catch (Exception e) {
		} finally {
			close();
		}

		return n;
	}

//수정
	public int update(productVO vo) {
		String sql = "UPDATE product SET pname=?, pmodel=?, pimage=?, pagency=?, pcolor=?, pvolume=?WHERE pName=?";
		int n = 0;

		try {
			psmt = conn.prepareStatement(sql);

		} catch (Exception e) {
		} finally {
			close();
		}
		return n;
	}

//삭제
	public int delete(productVO vo) {
		String sql = "DELETE FROM product WHERE pname=?";
		int n = 0;

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
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
