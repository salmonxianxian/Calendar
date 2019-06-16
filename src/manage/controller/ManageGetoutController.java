package manage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import manage.service.face.ManageGetoutService;
import manage.service.impl.ManageGetoutServiceImpl;

@WebServlet("/manage/getout")
public class ManageGetoutController extends HttpServlet {
   private static final long serialVersionUID = 1L;
   
   private ManageGetoutService managegetoutService = new ManageGetoutServiceImpl();
   
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

      managegetoutService.insert(req);
      
      resp.sendRedirect("/manage/member");
      
   }
   
}