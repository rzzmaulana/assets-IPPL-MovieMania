<%-- 
    Document   : HapusFilm
    Created on : Oct 31, 2024, 2:30:34 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MOVIE MANIA</title>
    <script src="https://kit.fontawesome.com/fe0880eae2.js" crossorigin="anonymous"></script>
    <style>
        *{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family:sans-serif;
}
body::before{
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    content: "";
    width: 100%;
    height: 100%;
    background-image: url(./img/background.png);
    z-index: -1;
}
nav{
    background-color: rgb(213, 209, 226);
    padding: 15px;
    font-weight: 1000;
    position: sticky;
}
.submit-container{
    position: absolute;
    left:50% ;
    top: 10%;
    transform: translatex(-50%);
    width: 90%;
    display: flex;
    flex-direction: column;
    align-items: center;
}
.submit-container h{
    font-weight: 1000;
    margin-bottom: 20px;
}
.submit-container form{
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-between;

}
.text{
    width: 100%;
    margin-bottom: 10px;
    background-color:rgb(213, 209, 226) ;
    border: none;
    padding: 7px ;
    border-radius: 5px;
}
.submit{
    background-color: rgb(116, 63, 238);
    border-radius: 5px;
    padding: 9px 5px;
    border: none;
    color: white;
    margin-top:30px;
}
    </style>
</head>
<body >
   <nav><h>DELETE MOVIE</h></nav>
   <div class="submit-container"> 
   <h>INSERT MOVIE DATA</h>
   <form action='/Movie' method="post">
       <input type="hidden" name="action" value="deleteMovie">
    <input type="text" class="text" id="title" placeholder="Movie Name" name='title'>
    <input type="text" class="text" id="title" placeholder="Movie Genre" name='genre'>
   
    <input type="submit" class="submit" value="Delete movie">
   </form>
   </div>
</body>
</html>
