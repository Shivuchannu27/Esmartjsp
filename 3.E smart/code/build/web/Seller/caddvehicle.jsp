<%@page import="java.io.*"%>
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

<style>
    
table, th, td,  #comments textarea{width: 50%;}
#comments input:focus,  #comments *:required:focus{border-color:#59A209;}
th{color:#FFFFFF; background-color:#373737;}
tr, #comments li, #comments input[type="submit"], #comments input[type="reset"]{color:inherit; background: rgba(0,0,0,0.3);}
tr:nth-child(even), #comments li:nth-child(even){color:inherit; background: rgba(0,0,0,0.3);;}
table a, #comments a{background-color:inherit;}
#1s {
  border: 1px solid black;
  margin-top: 100px;
  margin-bottom: 100px;
  margin-right: 150px;
  margin-left: 80px;
  background-color: white;
}

</style>
</head>
<body>
<div class="header">
  <div id="site_title"><a href="dashboard.jsp"><img src="img/logo.png" alt=""></a></div>
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
        <center>  <h1>Welcome to <%=semail%></h1></center>
        
        

 <center> <div id="1s"  class="ex1" >
          <%!

                       String incv="";
                       int incount;
                    %>
                                                        <%    

FileInputStream fii=new FileInputStream("D:\\shivkumar\\shivkumar\\2021\\Esmartjsp\\3.E smart\\code\\web\\Seller\\svech.txt");
             byte bbb[]=new byte[fii.available()];
             fii.read(bbb);
             fii.close();
             incv=new String(bbb);
             System.out.println("incv"+incv);
             
           incount=Integer.parseInt(incv);
         incount =incount+1;
         String sss=String.valueOf(incount);
              FileOutputStream fos1=new FileOutputStream("D:\\shivkumar\\shivkumar\\2021\\Esmartjsp\\3.E smart\\code\\web\\Seller\\svech.txt");
            fos1.write(sss.getBytes());
            fos1.close();
             String str="sid"+incv;
            
                        %>
   <form action="SellvehiclefAction.jsp" method="post">
        <table width="400" cellpadding="4" align="center" ><br>
	   <tr>
            <td >Vehicle ID</td>
            <td><input type="text" name="vehicleid" value="<%=str%>" readonly/></td>
        </tr> 
        <tr>
            <td>Seller Email</td>
            <td><input type="text" name="semail" value="<%=semail%>" readonly/></td>
        </tr>
        
          <tr>
            <td>Vehicle Name</td>
            <td><input type="text" name="vname" required/></td>
        </tr>
        <tr>
            <td>Vehicle Registration Date</td>
          <td><input type="Date" name="vrdate" required/></td>
        </tr>
     
        <tr>
            <td >Vehicle licence Number</td>
          <td><input type="number" name="vlnum"required/></td>
        </tr>
        
        <tr>
            <td>Vehicle Number</td>
          <td><input type="text" name="vnum" required/></td>
        </tr>
        <tr>
            <td >Price</td>
          <td><input type="text" name="vsprice" required/></td>
        </tr>
        
        
        <tr>
            <td>Description</td>
            <td><textarea type="text" name="vsdesc" required></textarea></td>
        </tr>
        <tr>
        
        
        <tr>
          <td colspan="2" >&nbsp;</td>
          </tr>
        <tr>
          <td colspan="2" align="center">
		  <input style="color: black"  type="submit" name="Submit" value="Submit"/>
		  <input  style="color: black" type="reset" name="Reset" value="Clear"/>
          </td>
          
          </tr>
      </table>
        </form>
</div></center>
  
</div>
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