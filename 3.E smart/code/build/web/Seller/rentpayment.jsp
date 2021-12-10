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
   <div id="site_title"><a href="../index.html"><img src="img/logo.png" alt=""></a></div>
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
    String bemail="";
    %>
    <%
        bemail=(String)session.getAttribute("c");
        %>
        <center>  <h1>Welcome to <%=bemail%></h1></center>
   <div>
         <form action="buyrentpayment.jsp" method="post">
        
        <table width="400" cellpadding="4" align="center" ><br>
	   <%!
            String vehicleid="";
            String aname="";
            String vname="";
            String vrdate="";
            String vnum="";
            String vsprice="";
            String vrfrom="";
            String vrto="";
         
            String vsdesc="";
            
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
                 aname=data.nextToken();
                 vname=data.nextToken();
                 vrdate=data.nextToken();
                 vnum=data.nextToken();
                 vsprice=data.nextToken();
                 vrfrom=data.nextToken();
                 vrto=data.nextToken();
               
                 vsdesc=data.nextToken();
                 
                
             }
              System.out.println(vehicleid);
              System.out.println(aname);
              System.out.println(vname);
              System.out.println(vrdate);
              System.out.println(vnum);
              System.out.println(vsprice);
              System.out.println(vsprice);
              System.out.println(vrfrom);
              System.out.println(vrto);
             
              System.out.println(vsdesc);
             
             
             
        %>
         <tr>
            <td >Vehicle Id</td>
            <td><input type="text" name="vehicleid" value="<%=vehicleid%>" readonly/></td>
        </tr>
           <tr>
            <td >Seller name</td>
            <td><input type="text" name="aname" value="<%=aname%>" readonly/></td>
        </tr>
        <tr>
          <td colspan="2" >&nbsp;</td>
          </tr>
        <tr>
            <td>Vehicle Name</td>
            <td><input type="text" name="vname" value="<%=vname%>" readonly/></td>
        </tr><tr>
          <td colspan="2" >&nbsp;</td>
          </tr>
         <tr>
          <td colspan="2" >&nbsp;</td>
          </tr>
        <tr>
            <td>Rent From</td>
            <td><input type="text" name="vnum" value="<%=vnum%>" readonly/></td>
        </tr><tr>
          <td colspan="2" >&nbsp;</td>
          </tr> 
        
          <td colspan="2" >&nbsp;</td>
          </tr>
        
          <tr>
            <td>Rent To</td>
          <td><input type="text" name="vsprice" value="<%=vsprice%>" readonly/></td>
        </tr><tr>
            <tr>
            <td>Rent Price</td>
          <td><input type="text" name="vrfrom" value="<%=vrfrom%>" readonly/></td>
        </tr><tr>
            
          <td colspan="2" >&nbsp;</td>
          </tr>
        <tr>
            <td>Buyer  Email</td>
          <td><input type="text" name="bemail" value="<%=bemail%>" readonly/></td>
        </tr><tr>
          <td colspan="2" >&nbsp;</td>
          </tr>
        
        <tr>
        <td colspan="2" align="center">
		  <input style="color: black"  type="submit" name="Submit" value="Send Request"/>
		 
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