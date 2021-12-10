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
<script>
$(function () {
    $("#prod_nav ul").tabs("#panes > div", {
        effect: 'fade',
        fadeOutSpeed: 400
    });
});
</script>
<script>
$(document).ready(function () {
    $(".pane-list li").click(function () {
        window.location = $(this).find("a").attr("href");
        return false;
    });
});
</script>
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
<div id="container">
   <img src="img/demo/download1.jpg" alt="" style="width:100%;height: 150px">
   
   <div>
       <%!
    String bemail="";
    %>
    <%
        bemail=(String)session.getAttribute("c");
        %>
        <center>  <h1>Welcome to <%=bemail%></h1></center>
        
        <table border="3px">
            <tr>
                <th>User Id</th>
                <th>Name</th>
                <th>Contact Number</th>
                <th>E-mail</th>
                <th>Password</th>
                <th>Address</th>
<!--                <th>Update</th>-->
                
            </tr> <tr>
            <%
            
              try
   {
        Connection con = Db.getConnection();
         Statement st=con.createStatement();
   String bemail=(String)session.getAttribute("c");
         String dquery="select * from buycusregister where bemail ='"+bemail+"'";
       
          ResultSet rs=st.executeQuery(dquery);
       String alldata="";
          while(rs.next())
          {
               alldata=rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6);
System.out.println(alldata);  
                %>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                 <td><%=rs.getString(6)%></td>
<!--                <td><a href="bUpdateprofile.jsp?val=<%=alldata%>">Update Profile</a></td>-->
                
            </tr>
          <% 
          }
         
   }catch(Exception e)
   {
       out.println(e);
   }
   
            
            
            
            %>
               
            
        </table>
   </div>
       
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