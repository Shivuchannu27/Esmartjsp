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
    <li><a href="#">Buy Vehicle</a>
      <!-- sub menu -->
      <ol>
        <li><a href="cviewvehicle.jsp">View Vehicle</a></li>
        <li><a href="cbuydetails.jsp">View buy details</a></li>
       
      </ol>
    </li>
    
    <!-- END sub menu -->
<!--    <li><a href="#contact">Contact</a></li>-->
    <li><a href="index.html">Logout</a></li>
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
        <form action="Spaymentaction.jsp" method="post">
        
        <table width="400" cellpadding="4" align="center" ><br>
	   <%!
        String vehicleid="";
        String vname="";
        String vrdate="";
        String vlnum="";
        String vnum="";
        String vsprice="";
        String vsdesc="";
        String bemail="";
        
        
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
                 vehicleid=data.nextToken();
                 semail=data.nextToken();
                 vname=data.nextToken();
                 vrdate=data.nextToken();
                 vlnum=data.nextToken();
                 vnum=data.nextToken();
                 vsprice=data.nextToken();
                 
                 vsdesc=data.nextToken();
                  bemail=data.nextToken();
                 
               
             }
             System.out.println(vehicleid);
             System.out.println(semail);
             System.out.println(vname);
             System.out.println(vrdate);
             System.out.println(vlnum);
             System.out.println(vnum);
             System.out.println(vsprice);
             System.out.println(vsdesc);
             System.out.println(bemail);
             
        %>
        
        <tr>
            <td>Vehicle ID</td>
            <td><input type="text" name="vehicleid" value="<%=vehicleid%>" readonly/></td>
        </tr>
           <tr>
            <td >Seller Email</td>
            <td><input type="text" name="semail" value="<%=semail%>" /></td>
        </tr>
        
        
          <tr>
            <td>Vehicle Name</td>
            <td><input type="text" name="vname" value="<%=vname%>"/></td>
        </tr>
        <tr>
            <td>Vehicle Registration Date</td>
          <td><input type="text" name="vrdate" value="<%=vrdate%>"/></td>
        </tr>
     
        <tr>
            <td >Vehicle licence Number</td>
          <td><input type="number" name="vlnum" value="<%=vlnum%>"/></td>
        </tr>
        
        <tr>
            <td>Vehicle Number</td>
          <td><input type="text" name="vnum" value="<%=vnum%>"/></td>
        </tr>
        <tr>
            <td >Price</td>
          <td><input type="text" name="vsprice" value="<%=vsprice%>"/></td>
        </tr>
         <tr>
            <td>Description</td>
            <td><input type="text" name="vsdesc" value="<%=vsdesc%>"></td>
        </tr>
        
        
         <tr>
            <td>Description</td>
            <td><input type="text" name="bemail" value="<%=bemail%>"></td>
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