package co.micol.user.log;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.DAO.memberDAO;
import co.micol.VO.memberVO;
import co.micol.common.Command;

public class Login implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Login 기능
		memberDAO dao = new memberDAO();
		memberVO vo = new memberVO();

		// JSP 로그인 페이지에서 설정한 name값 채크하기
		vo.setmId(request.getParameter("mId"));
		vo.setmPassword(request.getParameter("mPassword"));

		vo = dao.select(vo);

		String viewPage = null;
		// 세션객체에 id,pw,auth넘겨줌(변수명 변경가능)
		HttpSession session = request.getSession();
		session.setAttribute("mId", vo.getmId());
		session.setAttribute("mPassword", vo.getmPassword());
		session.setAttribute("mAuth", vo.getmAuth());
		// 성공페이지 실패 페이지 설정하기
		if (vo.getmAuth() != null) {
			viewPage = "";
		} else {
			viewPage = "";
		}

		return viewPage;
	}

}
