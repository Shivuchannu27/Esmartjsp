
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String sellid=request.getParameter("sellid");
            String name=request.getParameter("name");
            String tel=request.getParameter("tel");  
            String semail=request.getParameter("semail");
            String password=request.getParameter("password");
            String address=request.getParameter("address");
             
        
        Register.Db.ExecuteQuery("UPDATE `sellcusregister` SET `sellid`='"+sellid+"',`name`='"+name+"',`tel`='"+tel+"',`semail`='"+semail+"',`password`='"+password+"',`address`='"+address+"' where sellid ='"+sellid+"'");
        
        
        response.sendRedirect("cviewprofile.jsp");
        %>
    </body>
</html>

