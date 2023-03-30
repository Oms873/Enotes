package comDb;

import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class DBconnect {


     private static Connection conn;
    
      public static Connection getConn() {
        try{

            
          if(conn == null) {

            Class.forName("com.mysql.cj.jdbc.Driver");
            
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes2?user=root&password=OmSql877@");
            
          }
            
        } catch(SQLException|ClassNotFoundException e) {

            e.printStackTrace();
            
        }
        
        return conn;
        
      }

   


}