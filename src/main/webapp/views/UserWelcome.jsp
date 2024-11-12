<%-- 
    Document   : UserWelcome
    Created on : Oct 31, 2024, 3:50:19 PM
    Author     : acer
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>User Panel</title>
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
      /* Poppins Font */

      .poppins-thin {
        font-family: "Poppins", sans-serif;
        font-weight: 100;
        font-style: normal;
        
      }

      .poppins-extralight {
        font-family: "Poppins", sans-serif;
        font-weight: 200;
        font-style: normal;
      }

      .poppins-light {
        font-family: "Poppins", sans-serif;
        font-weight: 300;
        font-style: normal;
      }

      .poppins-regular {
        font-family: "Poppins", sans-serif;
        font-weight: 400;
        font-style: normal;
      }

      .poppins-medium {
        font-family: "Poppins", sans-serif;
        font-weight: 500;
        font-style: normal;
      }

      .poppins-semibold {
        font-family: "Poppins", sans-serif;
        font-weight: 600;
        font-style: normal;
      }

      .poppins-bold {
        font-family: "Poppins", sans-serif;
        font-weight: 700;
        font-style: normal;
      }

      .poppins-extrabold {
        font-family: "Poppins", sans-serif;
        font-weight: 800;
        font-style: normal;
      }

      .poppins-black {
        font-family: "Poppins", sans-serif;
        font-weight: 900;
        font-style: normal;
      }

      .poppins-thin-italic {
        font-family: "Poppins", sans-serif;
        font-weight: 100;
        font-style: italic;
      }

      .poppins-extralight-italic {
        font-family: "Poppins", sans-serif;
        font-weight: 200;
        font-style: italic;
      }

      .poppins-light-italic {
        font-family: "Poppins", sans-serif;
        font-weight: 300;
        font-style: italic;
      }

      .poppins-regular-italic {
        font-family: "Poppins", sans-serif;
        font-weight: 400;
        font-style: italic;
      }

      .poppins-medium-italic {
        font-family: "Poppins", sans-serif;
        font-weight: 500;
        font-style: italic;
      }

      .poppins-semibold-italic {
        font-family: "Poppins", sans-serif;
        font-weight: 600;
        font-style: italic;
      }

      .poppins-bold-italic {
        font-family: "Poppins", sans-serif;
        font-weight: 700;
        font-style: italic;
      }

      .poppins-extrabold-italic {
        font-family: "Poppins", sans-serif;
        font-weight: 800;
        font-style: italic;
      }

      .poppins-black-italic {
        font-family: "Poppins";
        font-weight: 900;
        font-style: italic;
      }

      body {
        background-color: #e5d4fc; /* Soft purple background */
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: "Poppins", sans-serif;
        background-image: url("/aset_movie/image/bgAdmin.jpeg");
        background-size: cover;
      }

      .admin-panel {
        text-align: center;
        background-color: none;
        padding: 2rem;
        border-radius: 1rem;
      }

      .admin-panel h1 {
        font-size: 2rem;
        margin-bottom: 0.5rem;
        font-weight: bold;
      }

      .admin-panel p {
        font-size: 1.2rem;
        margin-bottom: 1.5rem;
      }

      .admin-panel .btn {
        padding: 0.6rem 1.5rem;
        font-size: 1rem;
        background-color: rgb(138, 74, 222);
        background-image: linear-gradient(
          90deg,
          rgba(145, 129, 244, 1),
          rgba(80, 56, 237, 1)
        );
        color: white;
        border-radius: 10px;
        box-shadow: #4c3a74;
        font-weight: 700;
        font-style: normal;
        border: none;
      }

      .admin-panel .icon-handwave {
        font-size: 2rem;
        display: block;
        margin-bottom: 1rem;
      }
    </style>
  </head>
  <body>
       

    <div class="admin-panel">
      <span class="icon-handwave">👋 Welcome To Movie Mania!</span>

      <p>What would you like to do?</p>

      <div class="d-flex justify-content-center gap-3">
        <button type="button" class="btn btn-primary rounded-lg" onclick="window.location.href='/User?action=search'">
          Search Movies
        </button>
        <button type="button" class="btn btn-primary rounded-lg" onclick="window.location.href='/User?action=recommendation'">
          Movies Recommendation
        </button>
        
      </div>
    </div>

    <!-- Bootstrap JS (optional) -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
  </body>
</html>

