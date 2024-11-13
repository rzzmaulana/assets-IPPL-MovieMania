/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

/**
 *
 * @author acer
 */
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Reviews;

public class ReviewDao {

   private final String url = "jdbc:mysql://localhost:3306/mydb";
    private final String dbUser = "root";
    private final String dbPassword = "ori2305";

    // Method to add a review
    public boolean addReview(int movieID, int userID, float rating, String comment) {
        String query = "INSERT INTO reviews (Movies_movieID, Users_UserID, rating, comment, date) VALUES (?, ?, ?, ?, NOW())";

        try (Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, movieID);
            stmt.setInt(2, userID);
            stmt.setFloat(3, rating);
            stmt.setString(4, comment);

            return stmt.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to retrieve reviews for a specific movie
    public List<Reviews> getReviewsByMovieID(int movieID) {
        List<Reviews> reviews = new ArrayList<>();
        String query = "SELECT * FROM reviews WHERE Movies_movieID = ? ORDER BY date DESC";

        try (Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, movieID);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                Reviews review = new Reviews(
                    rs.getInt("ReviewID"),
                    rs.getInt("Users_UserID"),
                    rs.getInt("Movies_movieID"),
                   (int) rs.getFloat("rating"),
                    rs.getString("comment"),
                    rs.getDate("date")
                );
                reviews.add(review);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return reviews;
    }
}

