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

/**
 *
 * @author acer
 */
@WebServlet(name = "UserController", urlPatterns = {"/User"})
public class UserController extends HttpServlet {
    private UserDao userDao;

    @Override
    public void init() throws ServletException {
        userDao = new UserDao();
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        handleSignIn(request, response);
    }

    private void handleSignIn(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        if (userDao == null) {
            userDao = new UserDao(); // Ensures userDao is not null
        }

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean isValidUser = userDao.validateUser(username, password);
        List<User> users = userDao.getAllUsers();
        response.getWriter().print(users.size());
        response.getWriter().print(isValidUser);

        if (isValidUser) {
            request.getSession().setAttribute("username", username);
            response.sendRedirect("/views/UserWelcome.jsp");
        } else {
            request.setAttribute("errorMessage", "Invalid username or password");
            response.getWriter().print(password);
        }
    }
}
