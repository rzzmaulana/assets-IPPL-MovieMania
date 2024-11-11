/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package model;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author acer
 */
public interface Sign {
    void login(HttpServletRequest request, HttpServletResponse response)throws IOException ;
    void SignUp(HttpServletRequest request, HttpServletResponse response)throws IOException ;
}
