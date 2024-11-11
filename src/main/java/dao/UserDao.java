/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.User;

/**
 *
 * @author acer
 */
public class UserDao {
  private final String url ="jdbc:mysql://localhost:3306/mydb";
    private final String user = "root";
    private final String pasword = "ori2305";
    public UserDao(){};
    
    
    
    
    // Method to insert a new user
    public boolean insertUser(String username, String password) {
        String checkQuery = "SELECT username FROM users WHERE username = ?";
        String insertQuery = "INSERT INTO users (username, password) VALUES (?, ?)";
        
        try {
    Class.forName("com.mysql.cj.jdbc.Driver");
} catch (ClassNotFoundException e) {
    System.out.println("MySQL JDBC Driver not found: " + e.getMessage());
}
        
        
        try (Connection conn = DriverManager.getConnection(url, user, pasword);
             PreparedStatement checkStatement = conn.prepareStatement(checkQuery)) {

            // Check if the username already exists
            checkStatement.setString(1, username);
            ResultSet resultSet = checkStatement.executeQuery();

            if (resultSet.next()) {
                // Username already exists
                System.out.println("Username is already taken.");
                return false;
            }

            // Username is unique; proceed with insertion
            try (PreparedStatement insertStatement = conn.prepareStatement(insertQuery)) {
                insertStatement.setString(1, username);
                insertStatement.setString(2, password);
                int rowsInserted = insertStatement.executeUpdate();
                return rowsInserted > 0; // Returns true if insertion is successful
            }

        } catch (SQLException e) {
            System.out.println("Error inserting user: " + e.getMessage());
            return false;
        }
    }

    // Method to get a list of all users
    public List<User> getAllUsers() {
        List<User> users = new ArrayList<>();
        String query = "SELECT username,password FROM users";

        try {
    Class.forName("com.mysql.cj.jdbc.Driver");
} catch (ClassNotFoundException e) {
    System.out.println("MySQL JDBC Driver not found: " + e.getMessage());
}
        try (Connection conn = DriverManager.getConnection(url, user, pasword);
             Statement statement = conn.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {

            while (resultSet.next()) {
                String username = resultSet.getString("username");
                String password= resultSet.getString("password");
                User user = new User(username,password);
                users.add(user); // Add each username to the list
            }

        } catch (SQLException e) {
            System.out.println("Error retrieving users: " + e.getMessage());
        }
        
        return users;
    }
    
        public boolean validateUser(String username, String password) {
        String query = "SELECT username,password FROM users WHERE username = ? AND password = ? and isAdmin = ?";
        try {
    Class.forName("com.mysql.cj.jdbc.Driver");
} catch (ClassNotFoundException e) {
    System.out.println("MySQL JDBC Driver not found: " + e.getMessage());
}
        try (Connection conn = DriverManager.getConnection(url, user, pasword);
             PreparedStatement statement = conn.prepareStatement(query)) {

            statement.setString(1, username);
            statement.setString(2, password);
            statement.setString(3, "0");
            
            ResultSet resultSet = statement.executeQuery();
            
            // Return true if a matching user is found
            return resultSet.next();

        } catch (SQLException e) {
            System.out.println("Error validating user: " + e.getMessage());
            return false;
        }
    }
        
        public boolean validateAdmin(String username, String password) {
        String query = "SELECT username,password FROM users WHERE username = ? AND password = ? and isAdmin = ?";
        try {
    Class.forName("com.mysql.cj.jdbc.Driver");
} catch (ClassNotFoundException e) {
    System.out.println("MySQL JDBC Driver not found: " + e.getMessage());
}
        try (Connection conn = DriverManager.getConnection(url, user, pasword);
             PreparedStatement statement = conn.prepareStatement(query)) {

            statement.setString(1, username);
            statement.setString(2, password);
            statement.setString(3, "1");
            
            ResultSet resultSet = statement.executeQuery();
            
            // Return true if a matching user is found
            return resultSet.next();

        } catch (SQLException e) {
            System.out.println("Error validating user: " + e.getMessage());
            return false;
        }
    }
        
    
    public User selectUser(String username, String password) {
    String query = "SELECT userID, username, password, fullname FROM users WHERE username = ? AND password = ? AND isAdmin = ?";
    User userr = null; // Initialize as null to return if not found

    // Load MySQL JDBC Driver
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        System.out.println("MySQL JDBC Driver not found: " + e.getMessage());
    }

    // Try to connect to the database and execute the query
    try (Connection conn = DriverManager.getConnection(url, user, pasword); // Use DB credentials, not user’s password
         PreparedStatement statement = conn.prepareStatement(query)) {
        
        statement.setString(1, username);
        statement.setString(2, password);
        statement.setString(3, "0"); // Assuming 0 is for a regular user, not an admin
        
        ResultSet resultSet = statement.executeQuery();
        
        // If a matching user is found, create a User object
        if (resultSet.next()) {
            int userID = resultSet.getInt("userID"); // Retrieve userID
            String dbUsername = resultSet.getString("username");
            String dbPassword = resultSet.getString("password");
            String fullname = resultSet.getString("fullname");
            
            // Create a User object with userID, username, password, and fullname
            userr = new User(dbUsername, dbPassword);
            userr.setID(userID);
            userr.setFullname(fullname);
        }

    } catch (SQLException e) {
        System.out.println("Error validating user: " + e.getMessage());
    }

    return userr; // Returns the User object if found, or null if not found
}

    public User selectAdmin(String username, String password) {
    String query = "SELECT userID, username, password, fullname FROM users WHERE username = ? AND password = ? AND isAdmin = ?";
    User userr = null; // Initialize as null to return if not found

    // Load MySQL JDBC Driver
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        System.out.println("MySQL JDBC Driver not found: " + e.getMessage());
    }

    // Try to connect to the database and execute the query
    try (Connection conn = DriverManager.getConnection(url, user, pasword); // Use DB credentials, not user’s password
         PreparedStatement statement = conn.prepareStatement(query)) {
        
        statement.setString(1, username);
        statement.setString(2, password);
        statement.setString(3, "1"); // Assuming 0 is for a regular user, not an admin
        
        ResultSet resultSet = statement.executeQuery();
        
        // If a matching user is found, create a User object
        if (resultSet.next()) {
            int userID = resultSet.getInt("userID"); // Retrieve userID
            String dbUsername = resultSet.getString("username");
            String dbPassword = resultSet.getString("password");
            String fullname = resultSet.getString("fullname");
            
            // Create a User object with userID, username, password, and fullname
            userr = new User(dbUsername, dbPassword);
            userr.setID(userID);
            userr.setFullname(fullname);
        }

    } catch (SQLException e) {
        System.out.println("Error validating user: " + e.getMessage());
    }

    return userr; // Returns the User object if found, or null if not found
}

    public static void main(String[] args) {
        UserDao userDao = new UserDao();
        boolean isInserted = userDao.insertUser("testuser", "password");
        System.out.println("User inserted: " + isInserted);

        List<User> users = userDao.getAllUsers();
        System.out.println("Total users: " + users.size());
    }
}

