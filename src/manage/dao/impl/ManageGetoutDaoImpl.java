package manage.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbutil.DBConn;
import dto.Getout;
import manage.dao.face.ManageGetoutDao;

public class ManageGetoutDaoImpl implements ManageGetoutDao{

   private Connection conn = DBConn.getConnection();

   private PreparedStatement ps = null;
   private ResultSet rs = null;
   
   @Override
   public void insert(Getout getout) {
      
      String sql = "";
      sql += "INSERT INTO getout(getoutid, reason, explain)";
      sql += " VALUE(? , ?, ?)";
      
      
      try {
         ps=conn.prepareStatement(sql);
         
         ps.setString(1, getout.getGetoutid());
         ps.setString(2, getout.getReason());
         ps.setString(3, getout.getExplain());
         
         ps.executeUpdate();
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {   
         try {
            if(ps!=null)   ps.close();
         } catch (SQLException e) {
            e.printStackTrace();
         }
      }
      
   }

}