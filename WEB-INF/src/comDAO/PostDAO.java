package comDAO;

import comUser.Post;
import utilities.DBBoard;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;

public class PostDAO {

    

    

    public PostDAO() {
           
           super();
           
        
    }

    public boolean AddNotes(Post po) {

           boolean flag = false;
           
           try {

            Connection con = DBBoard.getConnection();

            String query = "insert into post(title, content, uid) values (?, ?, ?)";

            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, po.getTitle());
            pst.setString(2, po.getContent());
            pst.setInt(3, po.getUser().getId());
 
            int count = pst.executeUpdate();

            if(count == 1) {

                flag = true;
                
            }

           } catch(SQLException e) {
             
                e.printStackTrace();
               
           }


           return flag;
    }
    
}
