package co.micol.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.micol.VO.noteVO;
import co.micol.common.DAO;

public class noteDAO extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs;



//받은편지함 조회
	public ArrayList<noteVO> select(noteVO vo) {
		
		ArrayList<noteVO> list= new ArrayList<>();
		String sql = "SELECT * FROM note99 WHERE memberid = ? order by ndate desc";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getMemberId());
			rs = psmt.executeQuery();
			while(rs.next()) {
				vo = new noteVO();
				vo.setnNum(rs.getString("nnum"));
				vo.settId(rs.getString("tid"));
				vo.setnTitle(rs.getString("ntitle"));
				vo.setnContent(rs.getString("ncontent"));
				vo.setMemberId(rs.getString("memberid"));
				vo.setnDate(rs.getString("ndate"));	//날짜를 어떻게 넣을것인가?
				list.add(vo);
				System.out.println(vo.toString());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
//판매글에 답장쓰기
	public noteVO select2(noteVO vo) {
		String sql = "SELECT * FROM note99 WHERE memberid= ? ";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getMemberId());
			rs = psmt.executeQuery();
			if(rs.next()) {
				vo.setnNum(rs.getString("nnum"));
				vo.settId(rs.getString("tid"));
				vo.setnTitle(rs.getString("ntitle"));
				vo.setnContent(rs.getString("ncontent"));
				vo.setMemberId(rs.getString("memberid"));
				vo.setnDate(rs.getString("ndate"));	
				
				System.out.println("dao에선 과연"+""+vo.toString());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return vo;
	}
	
//편지한건 조회
	public noteVO  select1(noteVO vo) {
		
		
		String sql = "SELECT * FROM note99 WHERE ntitle = ?";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getnTitle());
			rs = psmt.executeQuery();
			if(rs.next()) {
				vo.setnNum(rs.getString("nnum"));
				vo.settId(rs.getString("tid"));
				vo.setnTitle(rs.getString("ntitle"));
				vo.setnContent(rs.getString("ncontent"));
				vo.setMemberId(rs.getString("memberid"));
				vo.setnDate(rs.getString("ndate"));	
				
				System.out.println("dao에선 과연"+""+vo.toString());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}


//쪽지 답장보내기
	public int insert(noteVO vo) {
		int n = 0;
		
		String sql = "INSERT INTO note99"//
					 +"(tid,ntitle,ncontent,memberid,nnum)"//
					 +"values(?,?,?,?,nnum_seq.nextval)";
		
		try {
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, vo.gettId());
			psmt.setString(2, vo.getnTitle());
			psmt.setString(3, vo.getnContent());
			psmt.setString(4, vo.getMemberId());
			n=psmt.executeUpdate();
			
			System.out.println(vo);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}

//삭제
	public int delete(noteVO vo) {
		int n = 0;
		String sql = "DELETE FROM note99 WHERE tid=? ";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.gettId());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
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
