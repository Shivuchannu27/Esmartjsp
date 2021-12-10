<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
	
	<%
	
	    String bemail=request.getParameter("bemail");
		String password=request.getParameter("password");
	
		boolean flag=false;
                out.println(bemail);
                out.println("<br>");
                out.println(password);
                String status = "";
		out.println("<br>");
		try{
		
			 Class.forName("com.mysql.jdbc.Driver").newInstance();
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/smart", "root", "root");
		   	Statement stmt = con.createStatement();
		   	String query = "select * from buycusregister where bemail ='" + bemail + "' and password='"+password+"'";
		   	out.println(query);
                        out.println("<br>");
                        ResultSet rs = stmt.executeQuery(query);
			while(rs.next())
			{
				String pass= rs.getString("password");
                                status = rs.getString(4);
			 	if( pass.equals(password)) {
					flag=true;
					break;
				}		
			}	
			if (flag ){
			
				session.setAttribute("password", rs.getString("password"));
				session.setAttribute("bemail", rs.getString("bemail"));
				
				 if(bemail.equals(bemail) && password.equals(password))
                                 {
					response.sendRedirect("Buyer/buydashboard.jsp");
                                        session.setAttribute("c", bemail);
                                 }
                                 else{
                                     response.sendRedirect("buycustomerlogin.jsp?msg=invalid");
                                 }
				
			
			}
			else{
				response.sendRedirect("buycustomerlogin.jsp?invalid ");
				
			}
		}
		catch(Exception e){
		
			out.println(e);
			
		}
				
%>