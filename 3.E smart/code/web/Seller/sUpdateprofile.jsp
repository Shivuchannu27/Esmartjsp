<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Register.Db"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.StringTokenizer"%>
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
   <div id="site_title"><a href="index.html"><img src="img/logo.png" alt=""></a></div>
  <!-- Main Menu -->
  <ol id="menu">
    <li class="active_menu_item"><a href="dashboard.jsp">Home</a></li>
    <!-- END sub menu -->
    <li><a href="#">Profile</a>
      <!-- sub menu -->
      <ol>
        <li><a href="cviewprofile.jsp">View Profile</a></li>
      </ol>
    </li>
    <!-- END sub menu -->
    <li><a href="#">Sell Vehicle</a>
      <!-- sub menu -->
      <ol>
        <li><a href="caddvehicle.jsp">Add Vehicle</a></li>
        <li><a href="cseedetails.jsp">View Vehicle details</a></li>
        <li><a href="ccrdetails.jsp">View Customer request</a></li>
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
<!--    <li><a href="#contact">Contact</a></li>-->
    <li><a href="../index.html">Logout</a></li>
  </ol>
</div>
<!-- END header -->
<div id="container">
   <img src="img/demo/download1.jpg" alt="" style="width:100%;height: 150px">
    <%!
    String semail="";
    %>
    <%
        semail=(String)session.getAttribute("c");
        %>
        <center><h1>Welcome to <%=semail%></h1></center>
   <div>
        <form action="sUpdateAction.jsp" method="post">
        
        <table width="400" cellpadding="4" align="center" ><br>
	   <%!
        String sellid="";
        String name="";
        String tel="";
        String password="";
        String address="";
        ResultSet rs;
        ResultSet rs1;
         String alldata="";
        %>
        <%
            

             alldata=request.getParameter("val");
             System.out.println(alldata);
             StringTokenizer data = new StringTokenizer(alldata," ");
             while(data.hasMoreTokens())
             {  
                 sellid=data.nextToken();
                 name=data.nextToken();
                 tel=data.nextToken();
                 semail=data.nextToken();
                 password=data.nextToken();
                address=data.nextToken();
             }
             System.out.println(sellid);
             System.out.println(name);
             System.out.println(tel);
             System.out.println(semail);
             System.out.println(address);
             System.out.println(password);
             
             
        %>
        
        <tr>
            <td >User Id</td>
            <td><input type="text" name="sellid" value="<%=sellid%>" readonly/></td>
        </tr>
           <tr>
            <td >Name</td>
            <td><input type="text" name="name" value="<%=name%>" /></td>
        </tr>
        
        <tr>
          <td colspan="2" >&nbsp;</td>
          </tr>
        <tr>
            <td>Contact Number</td>
            <td><input type="text" name="tel" value="<%=tel%>" /></td>
        </tr><tr>
          <td colspan="2" >&nbsp;</td>
          </tr>
        
        <tr>
            <td style="color: black">Email</td>
            <td><input type="text" name="semail" value="<%=semail%>" /></td> 
            
       </tr>
          <tr>
          <td colspan="2" >&nbsp;</td>
          </tr>
          <tr>
            <td>Password</td>
            <td><input type="password" name="password" value="<%=password%>" /></td>
        </tr>
               <tr>
          <td colspan="2" >&nbsp;</td>
          </tr>    

        <tr>
            <td >Address</td>
          <td><input type="text" name="address" value="<%=address%>" /></td>
        </tr>
     
       
           <tr>
        <td colspan="2" align="center">
		  <input style="color: black"  type="submit" name="Submit" value="Update"/>
		 
              </td>
          
          </tr>
      </table>
        </form>
       
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