<%-- 
    Document   : PageFilmEdit
    Created on : Nov 12, 2024, 11:20:34 PM
    Author     : acer
--%>

<%@page import="model.Movie"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Movie Data Form</title>
    <!-- Bootstrap 5 CDN -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
      rel="stylesheet"
    />
    <style>
      /* body {
        
        
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: "Poppins";
        background-color: #6c5ce7;
        
        
        
      }*/

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
        flex: 1; /* Take minimal space, allowing the reviews section to grow */
        background-color: rgba(240, 237, 255, 0.8);
        color: white;
        border-radius: 10px;
        padding: 20px;
        font-size: 24px;
        margin-right: 50px; /* Adds space between the title and reviews */
        text-align: left; /* Align text to the left */
        grid-area: movie;
        margin-top: 30px;
      }

      .Info {
        display: flex;
        flex-direction: column;
        gap: 70px;
        grid-area: review;
        margin-top: 30px;
      }

      .Judul , .Genre, .Rating, .Deskripsi,.Review{
        background-color: none;
        border-radius: 10px;
        padding: 15px;
        display: flex;
        align-items: center;
        gap: 15px;
        color: white;
        
        border: none;
      }
      
      
.edit-btn, .delete-btn {
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    font-size: 1rem;
    cursor: pointer;
    transition: background-color 0.3s ease;
    margin-top: 10px;
}

.edit-btn {
    background-color: #4caf50;
    color: white;
}

.delete-btn {
    background-color: #f44336;
    color: white;
}

.edit-btn:hover {
    background-color: #45a049;
}

     
    </style>
  </head>
  <body>
      <%-- Display the action parameter value here --%>
      <%
       Movie movie=(Movie) request.getSession().getAttribute("SingleMovie");
%>
      
    <div class="container">
      <div class="movie-title"> <img src="<%= movie.getPosterUrl() %>" alt="<%= movie.getTitle() %> Poster" /></div>
      <div class="Info">
        <form action="/saveMovieDetails" method="POST"/>
        <div class="Judul">
            
            <label for="title">Title: <%= movie.getTitle() %></label>
            <input type="text" id="title" name="title" />
        </div>
        <div class="Genre">
            <label for="title">Title: <%= movie.getTitle() %></label>
            <input type="text" id="title" name="title" />
        </div>
        <div class="Rating">
            <label for="title">Title: <%= movie.getTitle() %></label>
            <input type="text" id="title" name="title" />
        </div>
        <div class="Deskripsi">
            <label for="title">Title: <%= movie.getTitle() %></label>
            <input type="text" id="title" name="title" />
        </div>
        
        </div>
      <div class="button-group">
            <button class="edit-btn" onclick="window.location.href='/Movie?action=editMovie'>Edit</button>
            
       </div>
       </form>
      </div>
      
    </div>

    <!-- Bootstrap JS (optional) -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
  </body>
</html>
