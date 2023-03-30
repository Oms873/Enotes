package comDAO;

import comUser.UserDetails;
import utilities.DBBoard;

import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.ResultSet;

public class UserDAO {
    
    public UserDAO() {
 
           super();       
        
    }
    
    public boolean addUser(UserDetails us) {

        boolean flag = false;

        try {

            Connection conn = DBBoard.getConnection();

            String query = "insert into user(name, email, password) value(?, ?, ?)";

            
            PreparedStatement pst = conn.prepareStatement(query);

            pst.setString(1, us.getName());
            pst.setString(2, us.getEmail());
            pst.setString(3, us.getPassword());

           int count =  pst.executeUpdate();
            
           if(count == 1) {

            flag = true;
            
           }
            
        } catch(SQLException e) {

               e.printStackTrace();
            
        }
        

        return flag;
    } 

    public boolean login(UserDetails us) {

        boolean flag = false;
        
        try {

            Connection conn = DBBoard.getConnection();

            String query = "select name,id from user where email=? and password=?";
            
            PreparedStatement pst = conn.prepareStatement(query);

            pst.setString(1, us.getEmail());
            pst.setString(2, us.getPassword());
            
            ResultSet rs = pst.executeQuery();

            if(rs.next()) {

                us.setName(rs.getString(1));
                us.setId(rs.getInt(2));
                flag=true;
            }

            
        } catch(SQLException e) {

            e.printStackTrace();
            
        }
        

        return flag;
        
    }
    
    
}
