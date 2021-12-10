<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Register.Db"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE HTML>
<head>
<title>E-Smart Go</title>

<meta charset="utf-8">
<!-- Google Fonts -->
<link href='http://fonts.googleapis.com/css?family=Parisienne' rel='stylesheet' type='text/css'>
<!-- CSS Files -->
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="menu/css/simple_menu.css">
<!-- Contact Form -->
<link href="contact-form/css/style.css" media="screen" rel="stylesheet" type="text/css">
<link href="contact-form/css/uniform.css" media="screen" rel="stylesheet" type="text/css">
<!-- JS Files -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<script src="js/jquery.tools.min.js"></script>

</head>
<body>
<div class="header">
   <div id="site_title"><a href="../index.html"><img src="img/logo.png" alt=""></a></div>
  <!-- Main Menu -->
  <ol id="menu">
    <li class="active_menu_item"><a href="buydashboard.jsp">Home</a></li>
    <!-- END sub menu -->
    <li><a href="#">Profile</a>
      <!-- sub menu -->
      <ol>
        <li><a href="bcviewprofile.jsp">View Profile</a></li>
      </ol>
    </li>
    <!-- END sub menu -->
    <li><a href="#">Buy Vehicle</a>
      <!-- sub menu -->
      <ol>
        <li><a href="bcviewvehicle.jsp">View Vehicle</a></li>
        <li><a href="bcbuydetails.jsp">View Approve details</a></li>
        <li><a href="bcpaydetails.jsp">View Payment details</a></li>
      </ol>
    </li>
    <li><a href="#">Rent Vehicle</a>
      <!-- sub menu -->
      <ol>
        <li><a href="bviewrentvehicle.jsp">View Rent Vehicle</a></li>
        <li><a href="brentdetails.jsp">View Approve details</a></li>
        <li><a href="brentpaydetails.jsp">View Payment details</a></li>
      </ol>
    </li>
    
    <!-- END sub menu -->
    <li><a href="../index.html">Logout</a></li>
  </ol>
</div>
<!-- END header -->

   <img src="img/demo/download1.jpg" alt="" style="width:100%;height: 150px">
   
   <div>
       <%!
    String email="";
    %>
    <%
        email=(String)session.getAttribute("c");
        %>
        <center>  <h1>Welcome to <%=email%></h1></center>
        <center>  <h1>Rent Vehicle</h1></center>
        <center><table style="width: 70%;margin-left:10px;margin-right:1px;">
            <tr>
                <th>Vehicle ID</th>
                <th>Admin Name</th>
                <th>Vehicle Name</th>
                <th>Vehicle Number</th>
                <th>Price</th>
                <th>Rent From</th>
                <th>Rent To</th>
              
                <th>Description</th>
                <th>Action</th>
                
                
                
            </tr> <tr>
            <%
            
            try
   {
        Connection con = Db.getConnection();
         Statement st=con.createStatement();
   String email=(String)session.getAttribute("c");
         String dquery="select * from rentvehicle";
       
          ResultSet rs=st.executeQuery(dquery);
       String alldata="";
          while(rs.next())
          {
               alldata=rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6)+" "+rs.getString(7)+" "+rs.getString(8)+" "+rs.getString(9);
System.out.println(alldata);  
                %>
                <td style="text-align: center;width: 100%"><%=rs.getString(1)%></td>
                <td style="text-align: center"><%=rs.getString(2)%></td>
                <td style="text-align: center"><%=rs.getString(3)%></td>
                <td style="text-align: center"><%=rs.getString(4)%></td>
                <td style="text-align: center"><%=rs.getString(6)%></td>
                <td style="text-align: center"><%=rs.getString(7)%></td>
                <td style="text-align: center"><%=rs.getString(8)%></td>
                <td style="text-align: center"><%=rs.getString(9)%></td>
              
                <td style="text-align: center"><a href="brentvehrequest.jsp?val=<%=alldata%>">Send Request</a></td>
               
            </tr>
          <% 
          }
         
   }catch(Exception e)
   {
       out.println(e);
   }
   
            
            
            
            %>
           
               
            
        </table></center>
   </div>
       
  <!-- END prod wrapper -->

<!-- END container -->
<div id="footer">
  <!-- First Column -->
  
  <div>
      <p>Developed by student:Students name</p>
  </div>
  <!-- Fourth Column -->

</div>
<!-- END footer -->
</body>
</html>