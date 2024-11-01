<%-- 
    Document   : ReviewFilm
    Created on : Oct 31, 2024, 2:32:40 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Harry Potter and The Sorcerer's Stone - Review</title>
    <link rel="stylesheet" href="ReviewFilmStyle.css">
</head>
<body>
    <div class="container">
        <div class="left-side">
            <div class="movie-title">Harry Potter and The Sorcerer's Stone</div>
            <div class="poster">
                <img src="poster-placeholder.jpg" alt="Movie Poster">
            </div>
        </div>
        <div class="right-side">
            <div class="reviews">
                <div class="review">
                    <div class="user-icon">
                        <img src="user-icon.svg" alt="User Icon">
                    </div>
                    <div>Film ini sangat bagus dan menginspirasi</div>
                </div>
                <div class="review">
                    <div class="user-icon">
                        <img src="user-icon.svg" alt="User Icon">
                    </div>
                    <div>Amazing!!!</div>
                </div>
                <div class="review">
                    <div class="user-icon">
                        <img src="user-icon.svg" alt="User Icon">
                    </div>
                    <div>Endingnya kurang memuaskan</div>
                </div>
                <div class="review">
                    <div class="user-icon">
                        <img src="user-icon.svg" alt="User Icon">
                    </div>
                    <div>Ngga nyesel nonton film ini</div>
                </div>
                <div class="review">
                    <div class="user-icon">
                        <img src="user-icon.svg" alt="User Icon">
                    </div>
                    <input type="text" placeholder="Masukkan review...">
                    <button class="submit-button">Submit</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
