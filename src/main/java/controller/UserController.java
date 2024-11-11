/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;
import dao.UserDao;
import model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Sign;

/**
 *
 * @author acer
 */
@WebServlet(name = "UserController", urlPatterns = {"/User"})
public class UserController extends HttpServlet implements Sign{
    private UserDao userDao;

    
    public UserController(){
        userDao=new UserDao();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String action = request.getParameter("action");
            out.print(request.getContextPath());
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String name = request.getParameter("username");
        response.getWriter().print(name);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("signup".equals(action)) {
            SignUp(request, response);
        } else if ("signin".equals(action)) {
            login(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid action");
        }
    }

    public void SignUp(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Assume registerUser adds a new user to the database
         boolean success=userDao.insertUser(username, password);
        
        if (success) {
            
            response.sendRedirect("/views/SignIn.jsp"); // Redirect after successful registration
        } else {
            response.getWriter().println("Sign up failed. Try again.");
        }
    }

    @Override
    public void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean validateUser=userDao.validateUser(username, password);
        boolean validateAdmin=userDao.validateAdmin(username, password);
        if (validateUser) {
            User user=userDao.selectUser(username, password);
            
           
            request.getSession().setAttribute("user", user);
            response.sendRedirect("/views/UserWelcome.jsp"); // Redirect to dashboard if sign-in is successful
        }else if(validateAdmin){
            User user=userDao.selectAdmin(username, password);
            request.getSession().setAttribute("user", user);
            response.sendRedirect("/views/Admin.jsp");
        } else {
            response.getWriter().println("Invalid username or password.");
            response.sendRedirect("/views/SignIn.jsp");
        } 
    }
}

    

