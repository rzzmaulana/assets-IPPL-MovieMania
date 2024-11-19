<%-- 
    Document   : userHeader
    Created on : 19 Nov 2024, 13.51.48
    Author     : Sutan Rifky T
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .nav2{
         position: absolute;
        top:0px;
        right: 0px;
        background: linear-gradient(to right, #6a11cb, whitesmoke);
        width: 100%;
        display: flex;
        justify-content: flex-end;
        align-items: center;
        padding-top: 15px;
        padding-right:25px;
        padding-bottom: 15px;
        border-radius: 5px;
        box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2); 
    }
    .nav{
       
        display: flex;
        align-items: flex-end;
        justify-content: flex-end;
        
    }
    #userProfile{
        
        color: #b392f0;
        font-weight: 1000;
        text-decoration: none;
        margin-right: 5px;
        
    }
    .navImg{
       outline: 2px solid #b392f0;
        
        width: 75px;
        height:75px;
        border-radius: 50px;
        box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.2);
    }
</style>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     
     <div class="nav">
        <div class="nav2">
        <a id="userProfile" href="/views/editUser.jsp">Edit Profile</a>
        <%User user=(User) request.getSession().getAttribute("user");
            if(user.getPictureUrl()!=null){
                %>
                <img class="navImg"src="${pageContext.request.contextPath}/<%= user.getPictureUrl() %>"/><%
            }else{
            %><img class="navImg" src="${pageContext.request.contextPath}/uploaded_images/default.jpg"<%
}
        %>
        </div>
        </div >
        
    </body>
    
</html>
