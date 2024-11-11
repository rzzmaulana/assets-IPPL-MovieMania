<%-- 
    Document   : IdentityUser
    Created on : Oct 31, 2024, 11:06:41 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>User Profile</title>
    <link rel="stylesheet" href="style.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    />
  </head>

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

    /* Edit Icon positioned on top-right corner of profile-container */
    .edit-icon {
      position: absolute;
      top: 10px;
      right: 10px;
      background: rgba(255, 255, 255, 0.3);
      color: #ffffff;
      padding: 8px;
      border-radius: 50%;
      cursor: pointer;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.15);
      transition: background 0.3s ease;
    }

    .edit-icon:hover {
      background: rgba(255, 255, 255, 0.5);
    }

    /* Profile Card */
    .profile-card {
      display: flex;
      flex-direction: column;
      align-items: center;
      color: white;
    }

    /* Profile Picture */
    .profile-header {
      width: 100%;
      display: flex;
      justify-content: center;
      margin-bottom: 20px;
    }

    .profile-picture {
      font-size: 3rem; /* Adjust size as needed */
      color: rgba(255, 255, 255, 0.7);
    }

    /* Profile Info */
    .profile-info {
      display: flex;
      flex-direction: column;
      gap: 15px;
      width: 100%;
    }

    .info-section {
      background: rgba(255, 255, 255, 0.15);
      border-radius: 10px;
      padding: 10px 15px;
      text-align: center;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    .info-section h3 {
      font-size: 0.9rem;
      color: #f0f0f0;
      margin-bottom: 5px;
    }

    .info-section p {
      font-size: 1rem;
      font-weight: bold;
      color: #ffffff;
    }
  </style>

  <body>
    <div class="profile-container">
      <div class="profile-card">
        <div class="edit-icon">
          <i class="fas fa-edit"></i>
        </div>
        <div class="profile-header">
          <i class="fas fa-user profile-picture"></i>
          <!-- Updated profile icon -->
        </div>
        <div class="profile-info">
          <div class="info-section">
            <h3>Username</h3>
            <p>orimkhoirul23</p>
          </div>
          <div class="info-section">
            <h3>Full Name</h3>
            <p>Mochammad Khoirullutfansyah</p>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
