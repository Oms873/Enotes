package uploads;

import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.MultipartConfig;
import java.io.FileNotFoundException;
import javax.servlet.http.Part;
import java.io.InputStream;
import java.io.FileOutputStream;
import uploads.Image;

@MultipartConfig

@WebServlet("/image.do")

public class imageServlet extends HttpServlet {

        public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {


            Part file = request.getPart("uimage");

            String imageFileName = file.getSubmittedFileName();

            String uploadImage = "C:/Tomcat 9.0/webapps/FirstProject/images/"+imageFileName;

            try{
            
            FileOutputStream fos = new FileOutputStream(uploadImage);

            InputStream is = file.getInputStream();

            byte[] data = new byte[is.available()];
            
            is.read(data);
            fos.write(data);
            fos.close();
            } catch(FileNotFoundException e) {

                 e.printStackTrace();
               
            }   
            catch(IOException e) {

                  e.printStackTrace();
             
            } 

            Image img = new Image(imageFileName);
        
            img.saveImage();

            response.sendRedirect("Home.jsp");
        }
    
}