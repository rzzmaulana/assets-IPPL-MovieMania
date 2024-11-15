<%-- 
    Document   : editFilmJudul
    Created on : Oct 31, 2024, 2:22:34 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Input Judul Film</title>
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

    body {
      width: 100%;
      height: 100vh;
      border-radius: 53px;
      background-size: cover;
      display: flex;
        justify-content: center;
        align-items: center;
        font-family: "Poppins";

      background-image: url('background1.jpeg');
      background-size: cover;
      background-color: #6c5ce7;
        
    }


      .form-container {
        width: 75%;

        padding: 2rem;
      }

      .form-container h2 {
        text-align: center;
        margin-bottom: 1.5rem;
        font-weight: bold;
      }

      .form-floating {
        margin-bottom: 1rem;
        background-color: #e5d4fc;

        font-size: 1rem;
      }

      .form-control {
        background-color: #e5d4fc;
      }

      .submit-btn {
        display: flex;
        justify-content: center;
        margin-top: 15rem;
      }

      .submit-btn button {
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
        border:none;
      }

      .file-upload-container {
        display: flex;
        justify-content: space-between;
        background-color: #ded1f2;
       
        border-radius: 15px;
        padding: 0.8rem;
        width: 100%;
      }

      .file-upload-container input[type="file"] {
        border: none;
        background-color: transparent;
        color: #f7f7f7;
        width: 0%;
      }

      .file-upload-container input[type="file"]::file-selector-button {
        display: none;
      }

      .file-upload-container label {
        color: #4c3a74;
        font-size: 1rem;
      }

      

      .upload-icon {
        background-color: #4c3a74;
        border: none;
        border-radius: 50%;
        padding: 0.75rem;
        margin-left: 1rem;
        cursor: pointer;
        color: white;
      }

      
    </style>
  </head>
  <body>
    
        
    <div class="form-container">
      <h2>MASUKAN JUDUL FILM</h2>
      <form>
        <!-- Judul -->
        <div class="form-floating mb-3 rounded-4">
          <input
            type="text"
          class="form-control rounded-4"
            id="judul"
            placeholder="Judul"
          />
          <label for="judul">Judul</label>
        </div> 

        <!-- Cari button -->
        <div class="submit-btn">
          <button type="submit" class="btn btn-primary">Cari</button>
        </div>
      </form>
    </div>
   
    

    <!-- Bootstrap JS (optional) -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
  </body>
</html>
