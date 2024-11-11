/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author acer
 */
@WebServlet(name = "MainController", urlPatterns = {"/"})
public class MainController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String action = request.getParameter("action");
            

    if (action == null || action.isEmpty()) {
        // Redirect to SignIn.jsp as the default landing page
        request.getRequestDispatcher("/views/SignIn.jsp").forward(request, response);
        return;
    }

    switch (action) {
        case "signIn":
            request.getRequestDispatcher("/views/SignIn.jsp").forward(request, response);
            break;
        case "signUp":
            request.getRequestDispatcher("/views/SignUp.jsp").forward(request, response);
            break;
        case "userWelcome":
            request.getRequestDispatcher("/views/UserWelcome.jsp").forward(request, response);
            break;
        // Other cases...
            
        case "searchMovie":
            request.getRequestDispatcher("/views/UserWelcome.jsp").forward(request, response);
            break;
        default:
            
            request.getRequestDispatcher("/views/PageFilm.jsp").forward(request, response);
            break;
    }
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Forward the GET request to processRequest
        processRequest(request, response);
    }
    
     
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    

    
        handleSignIn(request, response);
    
}
    
    private void handleSignIn(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    response.getWriter().print(username);
    response.getWriter().print(password);
}


}
