package oms.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import oms.model.User;
import oms.model.dao.DBManager;

/**
 *
 *
 */
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Validator validator = new Validator();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String name = request.getParameter("name");
        
        DBManager manager = (DBManager) session.getAttribute("manager");
        User user = null;
        
        
        try {
            user = manager.existingUser(email);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
//
//        if (!validator.validateEmail(email)) {
//            session.setAttribute("EmailErr", "Incorrect email format");
//            request.getRequestDispatcher("register.jsp").include(request, response);
//        } else if (!validator.validateName(name)) {
//            session.setAttribute("nameErr", "Incorrect name format");
//            request.getRequestDispatcher("register.jsp").include(request, response);
//        } else if (!validator.validatePassword(password)) {
//            session.setAttribute("passErr", "Incorrect password format");
//            request.getRequestDispatcher("register.jsp").include(request, response);
//        } else if (!validator.validatePhone(phone)) {
//            session.setAttribute("phoneErr", "Incorrect phone format");
//            request.getRequestDispatcher("register.jsp").include(request, response);
//        }
//        else {
//            session.setAttribute("userRegister", user);
//            request.getRequestDispatcher("welcome.jsp").include(request, response);
//        } 
//        else {
//            session.setAttribute("existErr", "User does not exist!");
//            request.getRequestDispatcher("main.jsp").include(request, response);
//        }
        try {
            //            session.setAttribute("userRegister", user);

            if (manager.existingUser(email) != null){
                session.setAttribute("existErr", "An account under that email already exists.");
                request.getRequestDispatcher("error.jsp").include(request, response);
            } 
            else if (!validator.validateEmail(email)) {
                session.setAttribute("emailErr", "Incorrect email format");
                request.getRequestDispatcher("error.jsp").include(request, response);
            }
            else if (!validator.validatePhone(phone)) {
                session.setAttribute("phoneErr", "Incorrect phone format");
                request.getRequestDispatcher("error.jsp").include(request, response);
            }
            else if (!validator.validatePassword(password)) {
                session.setAttribute("passwordErr", "Incorrect password format"); //"Incorrect email format");
                request.getRequestDispatcher("error.jsp").include(request, response);
            }
            else {
                request.getRequestDispatcher("welcome.jsp").include(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

            
         


    }

}
