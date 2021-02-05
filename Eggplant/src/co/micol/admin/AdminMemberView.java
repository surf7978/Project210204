package co.micol.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.DAO.memberDAO;
import co.micol.VO.memberVO;
import co.micol.common.Command;

public class AdminMemberView implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO 클릭한 맴버의 상세 페이지
		memberDAO dao = new memberDAO();
		memberVO vo = new memberVO();
		
		vo = dao.select(vo);

		return null;
	}

}
