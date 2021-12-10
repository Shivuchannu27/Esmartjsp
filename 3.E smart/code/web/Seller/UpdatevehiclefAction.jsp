
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String vehicleid=request.getParameter("vehicleid");      
            String semail=request.getParameter("semail");
            String vname=request.getParameter("vname");
            String vrdate=request.getParameter("vrdate");
            String vlnum=request.getParameter("vlnum");
            String vnum=request.getParameter("vnum");
            String vsprice=request.getParameter("vsprice");
            String vsdesc=request.getParameter("vsdesc");
        
        Register.Db.ExecuteQuery("UPDATE `sellvehicle` SET `vehicleid`='"+vehicleid+"',`semail`='"+semail+"',`vname`='"+vname+"',`vrdate`='"+vrdate+"',`vlnum`='"+vlnum+"',`vnum`='"+vnum+"',`vsprice`='"+vsprice+"',`vsdesc`='"+vsdesc+"' where vehicleid ='"+vehicleid+"'");
        
        
        response.sendRedirect("cseedetails.jsp");
        %>
    </body>
</html>

