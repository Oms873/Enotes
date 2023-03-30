package comServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import comDAO.UserDAO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import comDb.DBconnect;
import comUser.UserDetails;
import utilities.DBBoard;

import java.sql.Connection;


@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    
             public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

                HttpSession session = request.getSession();
                
                String email = request.getParameter("uemail");
                
                String password  = request.getParameter("upassword");
                

                UserDetails us = new UserDetails();
                us.setEmail(email);
                us.setPassword(password);

                UserDAO ud = new UserDAO();

              boolean flag = ud.login(us);
                
                   if(flag) {

                      session.setAttribute("user", us);
                      response.sendRedirect("Home.jsp");
                    
                   } else {

                       session.setAttribute("error","invalid email/password");
                       response.sendRedirect("Login.jsp");
                    
                   }
              
             }
    
}
