package co.micol.note;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.DAO.noteDAO;
import co.micol.VO.noteVO;
import co.micol.common.Command;

public class SendNote implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO 쪽지 보내기 실행.-> 보낸후 쪽지함으로 이동됨.			
		noteDAO dao = new noteDAO();
		noteVO vo = new noteVO();
		vo.settId(request.getParameter("tId"));	
		vo.setnContent(request.getParameter("nContent"));
		vo.setnTitle(request.getParameter("nTitle"));
		vo.setMemberId(request.getParameter("memberId"));	
	
		
		System.out.println("SendNote.java에서  "+ vo.toString());
		
		dao.insert(vo);
		
		return "note/sendNoteSuccess";
	}

}
