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

public class UserDao {

    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mydb";
        String user = "root";
        String password = "ori2305";

        try (Connection conn = DriverManager.getConnection(url, user, password)) {
            String query = "SELECT username FROM users";
            Statement statement = conn.createStatement();
              
            ResultSet resultSet = statement.executeQuery(query);

            
            while (resultSet.next()) {
                String username = resultSet.getString("username");
                System.out.println("Username: " + username);
            } //else {
                //System.out.println("No data found.");
            //}

            resultSet.close();
            statement.close();

        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
