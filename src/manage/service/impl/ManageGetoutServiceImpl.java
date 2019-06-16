package manage.service.impl;

import javax.servlet.http.HttpServletRequest;

import dto.Getout;
import manage.dao.face.ManageGetoutDao;
import manage.dao.impl.ManageGetoutDaoImpl;
import manage.service.face.ManageGetoutService;

public class ManageGetoutServiceImpl implements ManageGetoutService{
   
   private ManageGetoutDao managegetoutDao = new ManageGetoutDaoImpl(); 
   
   @Override
   public void insert(HttpServletRequest req) {
      
      
      
      Getout getout = new Getout();
      
      getout.setGetoutid(req.getParameter("getoutid"));
      getout.setReason(req.getParameter("reason"));
      getout.setExplain(req.getParameter("explain"));
      
      System.out.println(getout.toString());
      
      managegetoutDao.insert(getout);
      
   }

}
 