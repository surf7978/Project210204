package co.micol.note;



import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.DAO.noteDAO;

import co.micol.VO.noteVO;
import co.micol.common.Command;

public class NoteList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		noteDAO dao = new noteDAO();
		noteVO vo = new noteVO();
		HttpSession httpSession = request.getSession(true);
		System.out.println("로그인아이디가져오기"+ httpSession.getAttribute("memberId"));
		String memberId = (String) httpSession.getAttribute("memberId");
		vo.setMemberId(memberId);
		ArrayList<noteVO> list = new ArrayList<>();
		
		
		list= dao.select(vo);
		
		
		request.setAttribute("list", list);
		
		return "note/noteList";
	}

}
