package co.micol.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.DAO.memberDAO;
import co.micol.VO.memberVO;
import co.micol.common.Command;
import sun.java2d.d3d.D3DRenderQueue;

public class AdminMemberUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO 관리자-수정기능
		memberDAO dao = new memberDAO();
		memberVO vo = new memberVO();

		vo.setmId(request.getParameter("mId"));
		vo.setmPassword(request.getParameter("mPassword"));
		vo.setmName(request.getParameter("mName"));
		vo.setmBirth(request.getParameter("mBirth"));
		vo.setmAuth(request.getParameter("mAuth"));
		vo.setmNumber(request.getParameter("mNumber"));
		vo.setmAccount(request.getParameter("mAccount"));

		int n = dao.update(vo);

		// 수정하고 난 후 갈 페이지 설정하기
		return "";
	}

}
