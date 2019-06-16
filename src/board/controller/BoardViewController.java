package board.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.face.BoardService;
import board.service.impl.BoardServiceImpl;
import dto.Board;
import dto.Icon;
import dto.Reply;
import dto.Schedule;
import schedule.service.face.ScheduleService;
import schedule.service.impl.ScheduleServiceImpl;

@WebServlet("/board/view")
public class BoardViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//BoardService 객체
	private BoardService boardService = new BoardServiceImpl();
	
	private ScheduleService scheduleService = new ScheduleServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//게시글 번호 파싱
		Board viewBoard = boardService.getBoardno(req);
		
		//게시글 조회
		viewBoard = boardService.view(viewBoard);
		
		// model로 게시글 전달
		req.setAttribute("viewBoard", viewBoard);
		
		
		// 댓글 리스트 전달 
		Reply reply = new Reply();
		List<Reply> replyList = boardService.getReplyList(viewBoard);
		req.setAttribute("replyList", replyList);
		
		//	스케줄 전달
		Schedule schedule = boardService.getScheduleInfo(viewBoard.getScheduleno());
		req.setAttribute("schedule", schedule);
		
		//	icon 전달
		List<Icon> iconList = scheduleService.iconList();
		Map<String, String> icon = new HashMap<>();
		for (int i = 0; i < iconList.size(); i++) {
			icon.put(iconList.get(i).getIconname(), iconList.get(i).getStorename());
		}
		req.setAttribute("icon", icon);
		// VIEW 지정 
		req.getRequestDispatcher("/WEB-INF/views/board/view.jsp").forward(req, resp);
		
	}
}
