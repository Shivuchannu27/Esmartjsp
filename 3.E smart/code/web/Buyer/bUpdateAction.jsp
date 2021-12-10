
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String userid=request.getParameter("userid");
            String name=request.getParameter("name");
            String tel=request.getParameter("tel");  
            String bemail=request.getParameter("bemail");
            String password=request.getParameter("password");
            String address=request.getParameter("address");
             
        
        Register.Db.ExecuteQuery("UPDATE `buycusregister` SET `userid`='"+userid+"',`name`='"+name+"',`tel`='"+tel+"',`bemail`='"+bemail+"',`password`='"+password+"',`address`='"+address+"' where userid ='"+userid+"'");
        
        
        response.sendRedirect("bcviewprofile.jsp");
        %>
    </body>
</html>

