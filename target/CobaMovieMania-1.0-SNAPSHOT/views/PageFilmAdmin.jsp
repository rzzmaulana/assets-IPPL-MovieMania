<%-- 
    Document   : PageFilmAdmin
    Created on : Nov 12, 2024, 10:01:16 PM
    Author     : acer
--%>

<%@page import="model.Movie"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Edit Movie Data</title>
    <!-- Bootstrap 5 CDN -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
      rel="stylesheet"
    />
    <style>
      body {
        width: 100%;
        height: 100vh;
        font-family: "Poppins";
        background-image: url("image/bgAdd.jpeg");
        background-size: cover;
        background-color: #6c5ce7;
      }

      .container {
        display: grid;
        padding: 30px;
        width: 100%;
        height: 80vh;
        grid-template-areas: "movie review";
        grid-template-columns: 5fr 10fr;
        padding: 20px;
        border-radius: 20px;
      }

      .movie-title {
        flex: 1;
        background-color: rgba(240, 237, 255, 0.8);
        color: white;
        border-radius: 10px;
        padding: 20px;
        font-size: 24px;
        margin-right: 50px;
        text-align: left;
        grid-area: movie;
        margin-top: 30px;
      }

      .Info {
        display: flex;
        flex-direction: column;
        gap: 20px;
        grid-area: review;
        margin-top: 30px;
      }

      .form-group {
        background-color: rgba(255, 255, 255, 0.1);
        border-radius: 10px;
        padding: 15px;
        color: white;
      }

      .form-control {
        background-color: transparent;
        border: 1px solid #ccc;
        color: white;
      }

      .save-btn {
        margin-top: 20px;
        padding: 10px 20px;
        border: none;
        background-color: #4caf50;
        color: white;
        border-radius: 5px;
        font-size: 1rem;
        cursor: pointer;
        transition: background-color 0.3s ease;
      }

      .save-btn:hover {
        background-color: #45a049;
      }
    </style>
  </head>
  <body>
    <%-- Retrieve the Movie object from the session --%>
    <%
      Movie movie = (Movie) request.getSession().getAttribute("SingleMovie");
      out.println(movie.getMovieID());
      int movieID=movie.getMovieID();
    %>

    <div class="container">
      <div class="movie-title">
        <img
          src="${pageContext.request.contextPath}/<%= movie.getPosterUrl() %>"
          style="width: 100%; border-radius: 10px;"
        />
        
        
        
        
      </div>

      <form class="Info" action="/Movie" method="POST" enctype="multipart/form-data">
          
       <input type="hidden" name="action" value="EditMovie">
       <input type="hidden" name="movieID" value="<%= movie.getMovieID() %>">
        <div class="form-group">
          <label for="title">Title:</label>
          <input
            type="text"
            id="title"
            name="title"
            class="form-control"
            value="<%= movie.getTitle() %>"
            required
          />
        </div>

        <div class="form-group">
          <label for="genre">Genre:</label>
          <input
            type="text"
            id="genre"
            name="genre"
            class="form-control"
            value="<%= movie.getGenre() %>"
            required
          />
        </div>

        <div class="form-group">
          <label for="rating">Release Date</label>
          <input
            type="date"
            id="rating"
            name="date"
            class="form-control"
            value="<%= movie.getReleaseDate()%>"
            step="0.1"
            min="0"
            max="10"
            required
          />
        </div>

        <div class="form-group">
          <label for="description">Description:</label>
          <textarea
            id="description"
            name="description"
            class="form-control"
            rows="4"
            required
          ><%= movie.getDescription() %></textarea>
        </div>

        <div class="form-group">
          <label for="review">Review:</label>
          
        </div>
        <div class="form-group">
          <label for="poster">Upload New Poster:</label>
        <input type="file" id="poster" name="poster" class="form-control" accept="image/*" />
          
        </div>
        
        <button type="submit" class="save-btn">Save Changes</button>
      </form>
    </div>

    <!-- Bootstrap JS (optional) -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
  </body>
</html>
