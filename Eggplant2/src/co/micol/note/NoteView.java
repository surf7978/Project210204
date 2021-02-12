package co.micol.note;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.DAO.noteDAO;
import co.micol.VO.noteVO;
import co.micol.common.Command;

public class NoteView implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 쪽지 한건보기
		noteDAO dao  = new noteDAO();
		noteVO vo = new noteVO();
		vo.setnTitle(request.getParameter("nTitle"));
		System.out.println("제목은 "+vo.getnTitle());
		dao.select1(vo);
		
		
		request.setAttribute("vo" , vo);
		
		System.out.println("vo출력 "+vo);
		
		return "note/noteView";
	}

}
