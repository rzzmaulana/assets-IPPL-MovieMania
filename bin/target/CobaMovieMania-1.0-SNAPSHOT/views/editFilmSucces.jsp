<%-- 
    Document   : editFilmSucces
    Created on : Oct 31, 2024, 2:23:41 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Success Message</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <style>
      body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        background-image: url("successBacground.jpeg");
        background-size: cover;
      }

      .success-container {
        text-align: center;
      }

      .success-text {
        margin-top: 20px;
        font-weight: bold;
        font-size: 1.5rem;
        color: #000;
      }
    </style>
  </head>
  <body>
    <div class="success-container">
      <!-- Success Icon -->

      <svg
        width="150"
        height="150"
        viewBox="0 0 150 150"
        fill="none"
        xmlns="http://www.w3.org/2000/svg"
      >
        <path
          fill-rule="evenodd"
          clip-rule="evenodd"
          d="M75 150C39.6446 150 21.967 150 10.9835 139.016C-8.9407e-07 128.033 0 110.355 0 75C0 39.6446 -8.9407e-07 21.967 10.9835 10.9835C21.967 -8.9407e-07 39.6446 0 75 0C110.355 0 128.033 -8.9407e-07 139.016 10.9835C150 21.967 150 39.6446 150 75C150 110.355 150 128.033 139.016 139.016C128.033 150 110.355 150 75 150ZM105.227 52.2725C107.424 54.4692 107.424 58.0308 105.227 60.2272L67.7272 97.7272C65.5305 99.924 61.9695 99.924 59.7725 97.7272L44.7725 82.7272C42.5758 80.5305 42.5758 76.9695 44.7725 74.7728C46.9692 72.576 50.5308 72.576 52.7275 74.7728L63.75 85.7947L97.2728 52.2725C99.4695 50.0759 103.031 50.0759 105.227 52.2725Z"
          fill="#1C274C"
        />
      </svg>

      <!-- Replace with your checkmark icon -->

      <!-- Success Text -->
      <div class="success-text">Movie successfully edited!</div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
