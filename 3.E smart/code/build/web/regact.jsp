
<%@page import="java.sql.*"%>
<%@page import="Register.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  
         Connection con;
        %>
        <%
            try{
                
        String sellid=request.getParameter("sellid");
        String name=request.getParameter("name");
        String tel=request.getParameter("tel");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String address=request.getParameter("address");

       
        
        
        
        con=Db.getConnection();
        out.println("conn");
        Statement st = con.createStatement();
       int i = st.executeUpdate("insert into sellcusregister values('"+sellid+"','"+name+"','"+tel+"','"+email+"','"+password+"','"+address+"')");
         if(i!= 0)
       {
            response.sendRedirect("sellcustomerlogin.jsp?User registerd successfully");
            }
            else
            {
                response.sendRedirect("sellcustomerregister.jsp?User registerd failed");
            }
           

            }catch(Exception e)
            {
                out.println(e);
            }
        


        %>