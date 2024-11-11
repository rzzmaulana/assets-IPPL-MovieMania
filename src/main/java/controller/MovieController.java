/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;
import dao.MovieDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServlet;
import model.Movie;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author acer
 */
@WebServlet(name = "MovieController", urlPatterns = {"/Movie"})
@MultipartConfig 
public class MovieController  extends HttpServlet{
    private final MovieDao movieDao = new MovieDao();
    private final String uploadDirectory = "C:/uploaded_images"; // Change to your preferred upload directory

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Movie> movies = movieDao.getAllMovies();
            request.setAttribute("movies", movies);
            request.getRequestDispatcher("/movieList.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("judul");
        String description = request.getParameter("description");
        String rating=request.getParameter("rating");
        String genre=request.getParameter("genre");
        String dateString = request.getParameter("date");
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd"); // Match HTML date format
        Date releaseDate = null;
        try {
            releaseDate = formatter.parse(dateString);
        } catch (ParseException ex) {
            Logger.getLogger(MovieController.class.getName()).log(Level.SEVERE, null, ex);
        }

        // Handle the uploaded poster image
        Part filePart = request.getPart("poster");
        String fileName = filePart.getSubmittedFileName();
        String filePath = uploadDirectory + File.separator + fileName;

        // Save the file to the server
        File fileSaveDir = new File(uploadDirectory);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdirs(); // Create the directory if it does not exist
        }
        filePart.write(filePath);
        
        // Relative path to store in the database
        String relativePath = "uploaded_images/" + fileName;

        boolean movieAdded=false;
        try {
            movieAdded = movieDao.addMovie(title,genre,releaseDate,description,rating,relativePath);
        } catch (SQLException ex) {
            Logger.getLogger(MovieController.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (movieAdded) {
            response.sendRedirect("Movie"); // Refresh the movie list
            
        } else {
            response.getWriter().print(title);
            response.getWriter().print(genre);
            response.getWriter().print(rating);
            response.getWriter().print(releaseDate);
            response.getWriter().print(relativePath);
            response.getWriter().println("Failed to add movie.");
        }
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int movieID = Integer.parseInt(request.getParameter("movieID"));
        try {
            boolean deleted = movieDao.deleteMovie(movieID);
            response.getWriter().println(deleted ? "Movie deleted successfully" : "Failed to delete movie");
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
