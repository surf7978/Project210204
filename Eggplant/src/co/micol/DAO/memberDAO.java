package co.micol.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.micol.VO.memberVO;
import co.micol.common.DAO;

public class memberDAO extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs;

//전체조회	
	public ArrayList<memberVO> selectList() {
		String sql = "SELECT * FROM member ORDER BY mid";
		try {
			psmt = conn.prepareStatement(sql);

		} catch (Exception e) {
		} finally {
			close();
		}

		return null;

	}

//선택조회
	public memberVO select(memberVO vo) {
		String sql = "SELECT * FROM member WHERE mid=?";
		try {
			psmt = conn.prepareStatement(sql);

		} catch (Exception e) {
		} finally {
			close();
		}
		return null;
	}

//등록
	public int insert(memberVO vo) { 		//권한 제외
		String sql = "INSERT INTO member (mid,mpassword, mname, mbirth, mnumber, maccount) VALUES (?,?,?,?,?,?)";
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
	public int update(memberVO vo) {	//아이디, 이름, 생년월일 제외 /  권한은 관리자만 수정
		String sql = "UPDATE member SET mpassword=?, mauth=?, mnumber=?, maccount=? WHERE mid=?";
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
	public int delete(memberVO vo) {
		String sql = "DELETE FROM member WHERE mid=?";
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
