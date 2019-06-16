package manage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Member;
import manage.service.face.ManageMemberService;
import manage.service.impl.ManageMemberServiceImpl;

@WebServlet("/manage/memberinfo")
public class ManageMemberInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ManageMemberService managememberService = new ManageMemberServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Member infoMember = managememberService.getUserid(req);
		String nickname = infoMember.getNickname();
		req.setAttribute("infoMember", infoMember);
		
		int cntBoard = managememberService.getcntBoard(nickname);
		
		req.setAttribute("cntBoard", cntBoard);
		
		int cntReply = managememberService.getReply(nickname);
		
		req.setAttribute("cntReply", cntReply);
		
		req.getRequestDispatcher("/WEB-INF/views/manage/memberinfo.jsp").forward(req, resp);
	
	}
}
