/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;
import dao.MovieDao;
import dao.UserDao;
import model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Movie;
import model.Sign;

/**
 *
 * @author acer
 */
@WebServlet(name = "UserController", urlPatterns = {"/User"})
public class UserController extends HttpServlet implements Sign{
    private UserDao userDao;
    private MovieDao movieDao;

    
    public UserController(){
        userDao=new UserDao();
        movieDao=new MovieDao();
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
        String action = request.getParameter("action");
        
        try {
            List<Movie>movies=movieDao.getAllMovies();
            request.getSession().setAttribute("movies", movies);
            
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
            
 
            
     

    if ("display".equals(action)) {
      
        
       DisplayMovie(request,response);
        
        response.sendRedirect("/views/HomeUser.jsp");
        
    } else if ("recommendation".equals(action)) {
            
         if (!"yes".equals(request.getParameter("search"))) {
           request.getSession().setAttribute("FilteredMovies", null);
}
         
            try {
                
                 List<Movie> displayMovies=getRecommendation(request,response);
                 
                 request.getSession().setAttribute("displayMovie",displayMovies);
        
                 response.sendRedirect("/views/MoviRecommendation.jsp");
            } catch (SQLException ex) {
                Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
            }
        
    }
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
            String notifGagal="username sudah dipakai!";
            request.getSession().setAttribute("notifGagal", notifGagal);
            response.sendRedirect("/views/SignUp.jsp");
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
    
    public void DisplayMovie(HttpServletRequest request, HttpServletResponse response) throws IOException {
        
        request.getSession().setAttribute("FilteredMovies", null);
        
        
    }
    
    protected List<Movie> getRecommendation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        User user=(User)request.getSession().getAttribute("user");
        int userID=user.getUserID();
        
        List<String>genres=userDao.getHighlyRatedGenres(userID,7);
        List<Integer>recommendID=userDao.getRecommendedMoviesIDByGenres(genres);
        
        List<Movie> movies = (List<Movie>) request.getSession().getAttribute("movies");
        List<Movie>recommendMovies=new ArrayList<>();
        List<Movie>filteredMovies=(List<Movie>) request.getSession().getAttribute("FilteredMovies");
      
        List<Movie> displayMovies = new ArrayList<>();
              if(recommendID!=null){
                          
                      for(Movie filem:movies){
                      
                        for(Integer id:recommendID){
                        
                            if(id==filem.getMovieID())recommendMovies.add(filem);
                        }
                      
                        
                    }
                    
                    if(filteredMovies!=null){
                          
                         for(Movie recMovie:recommendMovies){
                         
                             for(Movie filtered:filteredMovies){
                             
                               if(filtered.getMovieID()==recMovie.getMovieID())displayMovies.add(filtered);
                         
                         }
                   } 
                    
                    
                    
                       }else{
                         displayMovies=recommendMovies;
                      }
    
                  }else{
                       if(filteredMovies!=null){
                          displayMovies=filteredMovies;
                       }else{
                         displayMovies=movies;
                      }
                    }
              
            for (Movie movie : displayMovies) {   
              for(Movie film : movies) {
                     if(film.getMovieID() == movie.getMovieID()) {    
                            String newTitle = film.getTitle();
                            movie.setTitle(newTitle);
                       }
                  }
              
            }
        
       return displayMovies;
    
    }
}

    

