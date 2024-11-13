<%-- 
    Document   : HomeAdmin
    Created on : Nov 12, 2024, 9:50:25 PM
    Author     : acer
--%>

<%@page import="java.util.List"%>
<%@page import="model.User"%>
<%@page import="model.Movie"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Page</title>
    
    <style>
        /* General styling */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    background-color: #6b4ce6;
    color: white;
    display: flex;
    flex-direction: column;
    align-items: center;
    min-height: 100vh;
}

header {
    width: 100%;
    background-color: #3b2c8d;
    padding: 10px 0;
}

nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 90%;
    max-width: 1200px;
    margin: 0 auto;
    color: white;
}

.nav-left a {
    margin-right: 15px;
    text-decoration: none;
    color: white;
    font-weight: bold;
}

.nav-right {
    display: flex;
    align-items: center;
}

.nav-right input {
    background: none;
    border: none;
    outline: none;
    color: white;
    border-bottom: 1px solid white;
    padding: 5px;
    margin-right: 10px;
}

.search-btn {
    background: none;
    border: none;
    color: white;
    font-size: 1.2rem;
    cursor: pointer;
}

main {
    width: 90%;
    max-width: 1200px;
    margin: 20px auto;
}

.movie-section {
    margin-top: 20px;
}

.movie-section h2 {
    font-size: 1.5em;
    margin-bottom: 10px;
}

.movie-grid {
    display: grid;
    grid-template-columns: repeat(5, 1fr);
    gap: 15px;
    margin: 20px;
}

.movie-card {
    background-color: rgba(255, 255, 255, 0.1);
    border-radius: 10px;
    text-align: center;
    padding: 10px;
    transition: transform 0.3s;
}

.movie-card:hover {
    transform: scale(1.05);
}

.movie-thumbnail {
    background-color: rgba(255, 255, 255, 0.2);
    height: 200px;
    
    border-radius: 10px;
    margin-bottom: 10px;
}

.movie-title {
    font-size: 0.9em;
}

a{
    text-decoration: none;
    color:white;
}

    </style>
    
</head>

<body>
    <header>
        <nav>
            <div class="nav-left">
                <a href="#">Home</a>
                <a href="#">Recommend Movies</a>
            </div>
            <div class="nav-right">
                <form action="/Movie" method="get">
                    <input type="hidden" name="action" value="searchMovieAdmin">
                    <input type="text" name="query" placeholder="Search...">
                    <button type="submit" class="search-btn">🔍</button>
                </form>
            </div>
        </nav>
    </header>

    <main>
        <section class="movie-section">
            <div class="movie-grid">
                <%
                     List<Movie> movies = (List<Movie>) request.getSession().getAttribute("movies");
                     List<Movie>filteredMovies=(List<Movie>) request.getSession().getAttribute("FilteredMovies");
                     User user=(User) request.getSession().getAttribute("user");
                    // Check if filteredMovies is available, otherwise use movies
                    List<Movie> displayMovies = (filteredMovies != null) ? filteredMovies : movies;
                %>
                
                <% if (displayMovies != null && !displayMovies.isEmpty()) { %>
                    <% for (Movie movie : displayMovies) { %>
                        <a href="/Movie?action=DisplayFilmAdmin&movieID=<%= movie.getMovieID() %>" class="movie-card-link">
                            <div class="movie-card">
                                <div class="movie-thumbnail">
                                    <!-- Display the poster image -->
                                    <img src="<%= movie.getPosterUrl() %>" alt="<%= movie.getTitle() %> Poster" />
                                </div>
                                <p class="movie-title"><%= movie.getTitle() %></p>
                                <p class="movie-title"><%= movie.getGenre() %></p>
                                <p class="movie-title"><%= movie.getReleaseDate() %></p>
                            </div>
                        </a>
                    <% } %>
                <% } else { %>
                    <p>No movies available to display.</p>
                <% } %>
            </div>
        </section>
    </main>
</body>
</html>