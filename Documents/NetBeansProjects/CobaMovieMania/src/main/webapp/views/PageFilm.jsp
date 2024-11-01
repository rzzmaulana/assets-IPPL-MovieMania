<%-- 
    Document   : PageFilm
    Created on : Oct 31, 2024, 2:29:41 PM
    Author     : acer
--%>

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

      .Judul , .Genre, .Rating, .Umur,.Review{
        background-color: none;
        border-radius: 10px;
        padding: 15px;
        display: flex;
        align-items: center;
        gap: 15px;
        color: white;
        
        border: none;
      }

     
    </style>
  </head>
  <body>
      <%-- Display the action parameter value here --%>
        <%= request.getAttribute("actionValue") %>
      
    <div class="container">
      <div class="movie-title"></div>
      <div class="Info">
        <div class="Judul">
          <div>Judul Film</div>
        </div>
        <div class="Genre">
            <div>Genre</div>
        </div>
        <div class="Rating">
            <div>Rating</div>
        </div>
        <div class="Umur">
            <div>Umur</div>
        </div>
        <div class="Review">
            <div>Review</div>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap JS (optional) -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
  </body>
</html>
