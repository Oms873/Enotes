package comUser;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import javax.servlet.http.HttpSession;

import comDAO.PostDAO;
import comUser.UserDetails;
import utilities.DBBoard;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;

@WebServlet("/AddNotesServlet")
public class AddNotesServlet extends HttpServlet {

       public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

           HttpSession session = request.getSession();

           int uid =  Integer.parseInt(request.getParameter("id"));
           String title = request.getParameter("title");
           String content = request.getParameter("content");

           UserDetails us = (UserDetails)session.getAttribute("user");
        
           Post po = new Post();
           po.setUser(us);
           po.setTitle(title);
           po.setContent(content);

           System.out.println(content);
           

           PostDAO dao = new PostDAO();

           boolean flag = dao.AddNotes(po);

           if(flag) {

               System.out.println("data insert sucessfully");
            
           } else {

              System.out.println("data not inserted");
            
           }

       } 
    
}