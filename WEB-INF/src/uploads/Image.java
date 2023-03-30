package uploads;

import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.sql.ResultSet;

public class Image {
    

      private String image;

      public Image(String image) {

           this.image = image;
        
      }

      public void saveImage() {

            try {

                Class.forName("com.mysql.cj.jdbc.Driver");

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes2?user=root&password=OmSql877@");

                String query = "insert into images(image) value (?) ";

                PreparedStatement pst = con.prepareStatement(query);

                pst.setString(1, image);

                pst.executeUpdate();

                
            } catch(SQLException| ClassNotFoundException e) {

                e.printStackTrace();
                
            }
        
      }

      public static  ArrayList<String> showImages() {

             ArrayList<String> img = new ArrayList<String>();

             try {

                Class.forName("com.mysql.cj.jdbc.Driver");

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes2?user=root&password=OmSql877@");
                
                String query = "select * from images";
                
                PreparedStatement pst = con.prepareStatement(query);

                ResultSet rs = pst.executeQuery();

                while(rs.next()) {

                    img.add(rs.getString(2));
                    
                }
                
             } catch(SQLException| ClassNotFoundException e) {

                e.printStackTrace();
                
            }
        
            return img;
      }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
      
      
}
