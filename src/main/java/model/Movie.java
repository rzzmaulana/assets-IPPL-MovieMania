/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author acer
 */
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Movie {
    private int movieID;
    private String title;
    private String genre;
    private Date releaseDate;
    private String description;
    private float rating;
    private String posterUrl;
    private List<Reviews> reviews;  // Composition relationship with Review

    public Movie(int movieID, String title, String genre, Date releaseDate, String description, String posterUrl) {
        this.movieID = movieID;
        this.title = title;
        this.genre = genre;
        this.releaseDate = releaseDate;
        this.description = description;
        this.posterUrl = posterUrl;
        
    }

    public int getMovieID() {
        return movieID;
    }

    public String getTitle() {
        return title;
    }

    public String getGenre() {
        return genre;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public String getDescription() {
        return description;
    }

    public float getRating() {
        return calculateRating();
    }

    public String getPosterUrl() {
        return posterUrl;
    }

    public List<Reviews> getReviews() {
        return reviews;
    }

    public void addReview(Reviews review) {
        reviews.add(review);
        System.out.println("Review added with rating: " + review.getRating());
    }

    public float calculateRating() {
        if (reviews.isEmpty()) return 0;
        int totalRating = 0;
        for (Reviews review : reviews) {
            totalRating += review.getRating();
        }
        return (float) totalRating / reviews.size();
    }
}
