package co.micol.note;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.DAO.noteDAO;
import co.micol.VO.noteVO;
import co.micol.common.Command;

public class SendNoteForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO 지정된 사람에게 쪽지 보내기
		noteDAO dao = new noteDAO();
		noteVO vo = new noteVO();
		vo.setnTitle(request.getParameter("nTitle"));
		
		dao.select1(vo);
		
		request.setAttribute("vo", vo);
		//"vo" sendNoteForm에서 출력할 vo ${vo.~~} 이걸로 추렭
		
		System.out.println("SendNoteForm에서의 vo  "+ vo);
		
		return "note/sendNoteForm";
	}

}
