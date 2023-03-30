package comServlet;

import java.sql.Connection;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import comDAO.UserDAO;
import comUser.UserDetails;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import java.io.IOException;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
import comDb.DBconnect;


@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
        // Session
        
        HttpSession session = request.getSession();
        
        
        //Parameter Get

        String name = request.getParameter("fname");
        String email = request.getParameter("uemail");
        String password = request.getParameter("upassword");

        // validation
        
        boolean flag = true;
        
        Pattern pat = Pattern.compile("[A-Za-z ]{2,20}");

        Matcher m1 = pat.matcher(name); 
 
        if(!m1.matches()) {

            flag = false;
            request.setAttribute("name_error", "please fill valid name");
            request.getRequestDispatcher("Register.jsp").forward(request, response);
        }

        if(flag) {
        
        // Connection Get
        Connection conn = DBconnect.getConn();

        UserDetails us = new UserDetails(name, email, password);

        UserDAO ud = new UserDAO();

        boolean flag1 = ud.addUser(us);
        

        
        if(flag1) {

            session.setAttribute("reg-sucess", "Registration Sucessfully...");
            response.sendRedirect("Register.jsp");
            
        } else {

            session.setAttribute("failed", "Something went Wrong");
            response.sendRedirect("Register.jsp");
            
        }

    } else {

             System.out.println("Error");
        
    }
        
    }
    
}
