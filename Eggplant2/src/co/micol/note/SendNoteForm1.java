package co.micol.note;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.DAO.noteDAO;
import co.micol.VO.noteVO;
import co.micol.common.Command;

public class SendNoteForm1 implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 판매자에게 쪽지보내기
		noteDAO dao = new noteDAO();
		noteVO vo = new noteVO();
		vo.setMemberId(request.getParameter("memberId"));
		System.out.println("SendNoteForm의"+vo);
		
		dao.select2(vo);
		System.out.println("SendNoteForm의"+dao.select2(vo));
		
		request.setAttribute("vo",vo);
		
		System.out.println("SendNoteForm의 vo는"+vo);
		
		return "note/sendNoteForm1";
	}

}
