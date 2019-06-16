package manage.service.impl;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import dto.Getout;
import manage.dao.face.ManageGetoutDao;
import manage.dao.impl.ManageGetoutDaoImpl;
import manage.service.face.ManageGetoutService;

public class ManageGetoutServiceImpl implements ManageGetoutService{
   
   private ManageGetoutDao managegetoutDao = new ManageGetoutDaoImpl(); 
   
   @Override
   public void insert(HttpServletRequest req) {
      
	   try {
		req.setCharacterEncoding("utf-8");
	} catch (UnsupportedEncodingException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
      
      Getout getout = new Getout();
      
      getout.setGetoutid(req.getParameter("getoutid"));
      getout.setReason(req.getParameter("reason"));
      getout.setExplain(req.getParameter("explain"));
      
      System.out.println(getout.toString());
      
      managegetoutDao.insert(getout);
      
   }

}
 