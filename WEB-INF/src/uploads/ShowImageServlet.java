package uploads;

import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import uploads.Image;
import java.util.ArrayList;

@WebServlet("/showimage.do")
public class ShowImageServlet extends HttpServlet{
    
       public void doGet(HttpServletRequest request, HttpServletResponse response ) throws IOException, ServletException{

        ArrayList<String> img = Image.showImages();

        
        request.setAttribute("image",img);

        request.getRequestDispatcher("Images.jsp").forward(request, response);
        
       }
    
}
