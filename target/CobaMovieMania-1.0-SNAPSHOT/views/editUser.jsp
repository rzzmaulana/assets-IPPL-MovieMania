<%-- 
    Document   : editUser
    Created on : Oct 31, 2024, 11:09:03 PM
    Author     : acer
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Edit Profile</title>
    <link rel="stylesheet" href="style.css" />
    <!-- Font Awesome for icons if needed -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    />
    <style>
      /* Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

/* Background */
body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background: linear-gradient(135deg, #6a11cb, #2575fc);
}

/* Profile Container */
.profile-container {
    width: 80%;
    max-width: 400px;
    background: rgba(255, 255, 255, 0.1);
    border-radius: 15px;
    padding: 20px;
    color: white;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
    text-align: center;
}

.profile-container h2 {
    margin-bottom: 20px;
    font-size: 1.5rem;
    color: white;
}

/* Profile Form */
.profile-form {
    display: flex;
    flex-direction: column;
    gap: 15px;
    width: 100%;
}

/* Form Group */
.form-group {
    background: rgba(255, 255, 255, 0.15);
    border-radius: 10px;
    padding: 10px 15px;
    text-align: left;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.form-group label {
    display: block;
    font-size: 0.9rem;
    color: #f0f0f0;
    margin-bottom: 5px;
}

.form-group input {
    width: 100%;
    padding: 8px;
    border: none;
    border-radius: 8px;
    font-size: 1rem;
    background: rgba(255, 255, 255, 0.1);
    color: white;
    outline: none;
    transition: background 0.3s ease;
}

.form-group input:focus {
    background: rgba(255, 255, 255, 0.2);
}

/* Save Button */
.save-button {
    width: 100%;
    padding: 10px;
    font-size: 1rem;
    font-weight: bold;
    color: white;
    background-color: rgba(255, 255, 255, 0.15);
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: background 0.3s ease;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.save-button:hover {
    background-color: rgba(255, 255, 255, 0.25);
}
#success{
  color:chartreuse;
}
#fail{
    color:red;
}

    </style>
  </head>

  <body>
    <%=((User)request.getSession().getAttribute("user")).getUserID()%>  
    <%boolean res= request.getSession().getAttribute("isEditSuccess")!=null?(boolean)request.getSession().getAttribute("isEditSuccess"):false;
      if(res){
           %><p id="success">User Profile Berhasil di Ubah</p><%
               
        }else{
            %><p id="fail">User Profile Gagal di Ubah</p><%
}
    %>
    <%
    request.getSession().removeAttribute("isEditSuccess");
%>
    <form action="/User" method="Post" enctype="multipart/form-data">
        <input type="hidden" name="action" value="editUserProfile" enctype="multipart/form-data">
        <div class="form-group">
          <label for="username">Username</label>
          <input
            type="text"
            id="username"
            name="username"
      
            required
          />
        </div>
        <div class="form-group">
          <label for="full-name">Full Name</label>
          <input
            type="text"
            id="full-name"
            name="fullName"
      
            required
          />
         </div>
        <div class="form-group">
          <label for="description">Profile Description</label>
          <input
            type="text"
            id="description"
            name="description"
            required
          />
        </div>
        <div class="form-group">
          <label for="profileImage">Profile Image</label>
          <input
            type="file"
            id="profileImage"
            name="profilePicture"
            accept="image/*"
            required
          />
        </div>
        <input type="submit">
    </form>

  </body>
</html>

