<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Register.Db"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.StringTokenizer"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>E-Smart Go</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/feather/feather.css">
  <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" type="text/css" href="js/select.dataTables.min.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="images/favicon.png" />
</head>
<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo mr-5" href="dashboard.jsp"><h3>E-Smart Go</h3></a>
        <a class="navbar-brand brand-logo-mini" href="dashboard.jsp"></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="icon-menu"></span>
        </button>
        
        <ul class="navbar-nav navbar-nav-right">
          
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
               <i class="ti-power-off text-primary"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              
              <a href="adminlogin.jsp" class="dropdown-item">
                <i class="ti-power-off text-primary"></i>
                Logout
              </a>
            </div>
          </li>
         

        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="icon-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_settings-panel.html -->
      
      
      <!-- partial -->
      <!-- partial:partials/_sidebar.html -->
       <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="dashboard.jsp">
              <i class="icon-grid menu-icon"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
         
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#form-elements" aria-expanded="false" aria-controls="form-elements">
              <i class="icon-head menu-icon"></i>
              <span class="menu-title">Buyer</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="form-elements">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"><a class="nav-link" href="buyerdetails.jsp">Buyer Details</a></li>
                <li class="nav-item"><a class="nav-link" href="buyviewdetails.jsp">Rent Request</a></li>
                <li class="nav-item"><a class="nav-link" href="Approvedviewdetails.jsp">Approved & Payment</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#charts" aria-expanded="false" aria-controls="charts">
               <i class="icon-head menu-icon"></i>
              <span class="menu-title">Seller</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="charts">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="sellerdetails.jsp">Seller Details</a></li>
                <li class="nav-item"> <a class="nav-link" href="selviewdetails.jsp">Rent Request</a></li>
                <li class="nav-item"><a class="nav-link" href="sApprovedviewdetails.jsp">Approved & Payment</a></li>
             </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <i class="icon-head menu-icon"></i>
              <span class="menu-title">Rent </span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="Addrentveh.jsp"> Add Rent Vehicle </a></li>
                <li class="nav-item"> <a class="nav-link" href="viewrentveh.jsp"> View Rent Vehicle </a></li>
               </ul>
            </div>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#icons" aria-expanded="false" aria-controls="icons">
              <i class="icon-contract menu-icon"></i>
              <span class="menu-title">Contact </span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="icons">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="updatecontact.jsp">Update Contact </a></li>
              </ul>
            </div>
          </li>
        </ul>
      </nav>
      <!-- partial -->
  
            
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <center>  <h1>Update Rent Vehicle</h1></center>
      
 <center> <div id="1s"  class="ex1" >
          
   <form action="SUpdaterentAction.jsp" method="post">
        <%!
        String vehicleid="";
        String aname="";
        String vname="";
        String vnum="";
        String vrfrom="";
        String vrto="";
        String bemail="";
        String vsprice="";
        
        
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
                 vnum=data.nextToken();
                 vrfrom=data.nextToken();
                 vrto=data.nextToken();
                 vsprice=data.nextToken();
                 bemail=data.nextToken();
             }
             System.out.println(vehicleid);
             System.out.println(aname);
             System.out.println(vname);
             System.out.println(vnum);
             System.out.println(vrfrom);
             System.out.println(vrto);
             System.out.println(bemail);
             System.out.println(vsprice);
             
             
        %>
       <div>
        <label>Vehicle ID</label>
        <input type="text" name="vehicleid" value="<%=vehicleid%>" readonly/>
        </div>  
        
        <div>
        <label>Admin</label>
        <input type="text" name="aname" value="<%=aname%>" readonly/>
        </div> 
        
        <div>
        <label>Vehicle Name</label>
        <input type="text" name="vname" value="<%=vname%>" readonly/>
        </div> 
        
        <div>
        <label>Vehicle Number</label>
        <input type="text" name="vnum" value="<%=vnum%>" readonly/>
        </div> 
        
        <div>
        <label>Date From</label>
        <input type="text" name="vrfrom" value="<%=vrfrom%>" readonly/>
        </div> 
        
        <div>
        <label>Date To</label>
        <input type="text" name="vrto" value="<%=vrto%>" readonly/>
        </div> 
        
        <div>
        <label>Price</label>
        <input type="text" name="vsprice" value="<%=vsprice%>" readonly/>
        </div> 
        
        
        <div>
        <label>Customer Email</label>
        <input type="text" name="bemail" value="<%=bemail%>" readonly/>
        </div> 
        
       
        
        
        
        
        <input style="color: black"  type="submit" name="Submit" value="Submit"/>
	<input  style="color: black" type="reset" name="Reset" value="Clear"/>
        
        </form>
</div></center>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="vendors/chart.js/Chart.min.js"></script>
  <script src="vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <script src="js/dataTables.select.min.js"></script>

  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <script src="js/settings.js"></script>
  <script src="js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <script src="js/Chart.roundedBarCharts.js"></script>
  <!-- End custom js for this page-->
</body>

</html>

