/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author acer
 */
public class Admin extends User{
    public Admin(int userID, String username, String password) {
        super(userID, username, password);
       
    }

    public void addMovie(Movie movie) {
        System.out.println("Movie added: " + movie.getTitle());
        // Logic to add the movie to the movie database (not implemented here)
    }

    public void deleteMovie(int movieID) {
        System.out.println("Movie with ID " + movieID + " deleted.");
        // Logic to delete the movie from the movie database
    }

    public void editMovie(int movieID, Movie updatedMovie) {
        System.out.println("Movie with ID " + movieID + " edited.");
        // Logic to edit the movie in the movie database
    }
}
