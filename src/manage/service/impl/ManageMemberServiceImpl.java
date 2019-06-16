package manage.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.Member;
import manage.dao.face.ManageMemberDao;
import manage.dao.impl.ManageMemberDaoImpl;
import manage.service.face.ManageMemberService;
import util.Paging;

public class ManageMemberServiceImpl implements ManageMemberService {

	private ManageMemberDao managememberDao = new ManageMemberDaoImpl();
	
	@Override
	public Paging getCurPage(HttpServletRequest req) {
		// �쟾�떖�뙆�씪誘명꽣 curPage �뙆�떛
		String param = req.getParameter("curPage");
		int curPage = 0;
		if (param != null && !"".equals(param)) {
			curPage = Integer.parseInt(param);
		}

		// �쟾泥� 寃뚯떆湲� �닔
		int totalCount = managememberDao.selectCntAll();

		// �럹�씠吏� 媛앹껜 �깮�꽦
		Paging paging = new Paging(totalCount, curPage);
//		System.out.println(paging); //TEST

		return paging;
	}
	
	

	@Override
	public List getList(Paging paging) {
		return managememberDao.selectAll(paging);
	}





	@Override
	public Member getUserid(HttpServletRequest req) {

		String param = req.getParameter("userid");
		
		
		return managememberDao.view(param);
	}



	@Override
	public int getReply(String nickname) {
		
		
		return managememberDao.cntReply(nickname);
	}



	@Override
	public int getcntBoard(String nickname) {
		
		
		return managememberDao.cntBoard(nickname);
	}
	
	



	
	
	

}
