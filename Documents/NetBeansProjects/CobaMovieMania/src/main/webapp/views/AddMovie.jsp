<%-- 
    Document   : AddMovie
    Created on : Oct 31, 2024, 2:36:07 PM
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
      border-radius: 53px;
      /*background-image: url('data:image/svg+xml,%3Csvg xmlns%3D%22http%3A//www.w3.org/2000/svg%22 xmlns%3Axlink%3D%22http%3A//www.w3.org/1999/xlink%22 viewBox%3D%220 0 1366 768%22 fill%3D%22none%22%3E%3Crect x%3D%22-43%22 y%3D%22-40%22 width%3D%221451%22 height%3D%22848%22 rx%3D%2253%22 fill%3D%22url(%23paint0_linear_271_3)%22/%3E%3Crect x%3D%22-43%22 y%3D%22-40%22 width%3D%221451%22 height%3D%22848%22 rx%3D%2253%22 fill-opacity%3D%220.06%22 fill%3D%22url(%23pattern0_271_3)%22/%3E%3Cdefs%3E%3Cpattern id%3D%22pattern0_271_3%22 patternContentUnits%3D%22objectBoundingBox%22 width%3D%221.41144%22 height%3D%222.41509%22%3E%3Cuse xlink%3Ahref%3D%22%23image0_271_3%22 transform%3D%22scale(0.00068918 0.00117925)%22/%3E%3C/pattern%3E%3ClinearGradient id%3D%22paint0_linear_271_3%22 x1%3D%221480.23%22 y1%3D%22-95.2083%22 x2%3D%22846.747%22 y2%3D%221310.16%22 gradientUnits%3D%22userSpaceOnUse%22%3E%3Cstop stop-color%3D%22%239181F4%22/%3E%3Cstop offset%3D%220.346%22 stop-color%3D%22%237B68F2%22/%3E%3Cstop offset%3D%221%22 stop-color%3D%22%235038ED%22/%3E%3C/linearGradient%3E%3C/defs%3E%3C/svg%3E');*/
      background-size: cover;
      display: flex;
        justify-content: center;
        align-items: center;
        font-family: "Poppins";

      background-image: url('/aset_movie/image/bgAdd.jpeg');
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
        margin-top: 1.5rem;
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
      <h2>MASUKAN DATA FILM</h2>
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
      
        <!-- Genre -->
        <div class="form-floating mb-3 rounded-4">
          <input
            type="text"
            class="form-control rounded-4"
            id="genre"
            placeholder="Genre"
          />
          <label for="genre">Genre</label>
        </div>
      
        <!-- Rating -->
        <div class="form-floating mb-3 rounded-4">
          <input
            type="text"
            class="form-control rounded-4"
            id="rating"
            placeholder="Rating"
          />
          <label for="rating">Rating</label>
        </div>
      
        <!-- Umur -->
        <div class="form-floating mb-3 rounded-4">
          <input
            type="text"
            class="form-control rounded-4"
            id="umur"
            placeholder="Umur"
          />
          <label for="umur">Umur</label>
        </div>
      </form>
      
        <!-- Upload Poster -->
        <div class="file-upload-container">
          <span class="input-text start">Upload Poster</span>
          <!-- File Input -->
          <input type="file" id="uploadPoster" placeholder="Upload poster..." />
          <label for="uploadPoster">
            <img
              src="/aset_movie/image/icon_upload.jpeg"
              style="width: 2rem; height: 2rem"
            />
          </label>
          
        </div>

        

        <!-- Add Movie Button -->
        <div class="submit-btn">
          <button type="submit" class="btn btn-primary">Add movie</button>
        </div>
      </form>
    </div>
   
    

    <!-- Bootstrap JS (optional) -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
  </body>
</html>
