/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import java.util.List;
import model.Movie;
import java.sql.*;

/**
 *
 * @author acer
 */
public class MovieDao {
   
    public MovieDao(){};
    
    private final String url = "jdbc:mysql://localhost:3306/mydb";
    private final String dbUser = "root";
    private final String dbPassword = "ori2305";

    // Method to add a new movie
    public boolean addMovie(String title,String genre,java.util.Date releaseDate,String description,String rating, String posterUrl) throws SQLException {
        String sql = "INSERT INTO movies (title, genre , releaseDate ,description ,poster_url) VALUES (?, ?,?, ?,?)";
         try {
    Class.forName("com.mysql.cj.jdbc.Driver");
} catch (ClassNotFoundException e) {
    System.out.println("MySQL JDBC Driver not found: " + e.getMessage());
}
        try (Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            
            
            stmt.setString(1, title);
            stmt.setString(2, genre);
            java.sql.Date releaseDateSql = new java.sql.Date(releaseDate.getTime()); // Convert to java.sql.Date
            stmt.setDate(3, releaseDateSql);
           
            stmt.setString(4, description);
            stmt.setString(5, posterUrl);
            
            

            return stmt.executeUpdate() > 0; // Returns true if insertion was successful
        }
    }

    
    
    
    
    // Method to update an existing movie
    public boolean updateMovie(int movieID, String title, String description, String posterUrl) throws SQLException {
        String sql = "UPDATE movies SET title = ?, description = ?, poster_url = ? WHERE movieID = ?";
        try (Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, title);
            stmt.setString(2, description);
            stmt.setString(3, posterUrl);
            stmt.setInt(4, movieID);

            return stmt.executeUpdate() > 0; // Returns true if update was successful
        }
    }

    // Method to delete a movie by ID
    public boolean deleteMovie(String title,String genre) throws SQLException {
        String sql = "DELETE FROM movies WHERE title=? and genre=?";
        try (Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, title);
            stmt.setString(2, genre);

            return stmt.executeUpdate() > 0; // Returns true if deletion was successful
        }
    }

    // Method to retrieve a movie by ID
    public Movie getMovieById(int movieID) throws SQLException {
        String sql = "SELECT * FROM movies WHERE movieID = ?";
        try (Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, movieID);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                
                String title = rs.getString("title");
                String genre=rs.getString("genre");
                String description = rs.getString("description");
                String posterUrl = rs.getString("poster_url");
                Date releaseDate=rs.getDate("releaseDate");
                String rating=rs.getString("rating");

                return new Movie(movieID, title, genre, releaseDate, description, posterUrl);
            }
        }
        return null; // Returns null if no movie is found with the given ID
    }

    // Method to retrieve all movies
    public List<Movie> getAllMovies() throws SQLException {
        List<Movie> movies = new ArrayList<>();
        String sql = "SELECT * FROM movies";
        try (Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                int movieID = rs.getInt("movieID");
                String title = rs.getString("title");
                String genre=rs.getString("genre");
                String description = rs.getString("description");
                String posterUrl = rs.getString("poster_url");
                Date releaseDate=rs.getDate("releaseDate");
                String rating=rs.getString("rating");

                movies.add(new Movie(movieID, title, genre, releaseDate, description, posterUrl));
                
            }
        }
        return movies;
    }

}
