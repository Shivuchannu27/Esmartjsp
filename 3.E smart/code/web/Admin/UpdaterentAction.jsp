
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
        String aname=request.getParameter("aname");
        String vname=request.getParameter("vname");
        String vrdate=request.getParameter("vrdate");
        String vnum=request.getParameter("vnum");
        String vsprice=request.getParameter("vsprice");
        String vrfrom=request.getParameter("vrfrom");
        String vrto=request.getParameter("vrto");
        String vphoto=request.getParameter("vphoto");
        String vsdesc=request.getParameter("vsdesc");

        
        Register.Db.ExecuteQuery("UPDATE `rentvehicle` SET `vehicleid`='"+vehicleid+"',`aname`='"+aname+"',`vname`='"+vname+"',`vrdate`='"+vrdate+"',`vnum`='"+vnum+"',`vsprice`='"+vsprice+"',`vrfrom`='"+vrfrom+"',`vrto`='"+vrto+"',`vphoto`='"+vphoto+"',`vsdesc`='"+vsdesc+"' where vehicleid ='"+vehicleid+"'");
        
        
        response.sendRedirect("viewrentveh.jsp");
        %>
    </body>
</html>

