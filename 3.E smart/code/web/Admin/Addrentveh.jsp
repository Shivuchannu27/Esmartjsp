<%@page import="java.io.*"%>
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
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
           
         
          <div class="row">
            <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                
                  <div class="row">
                    <div class="col-12">
                        <%!
                          String name="";
                        %>
                        <%
                            name=(String)session.getAttribute("c");
                        %>
                            <center>  <h1>Welcome to <%=name%></h1></center>
                            
                           
                    </div>
                  </div>
                  </div>
                </div>
              </div>
            </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <center>  <h1>Add Rent Vehicle</h1></center>
      
 <center> <div id="1s"  class="ex1" >
          <%!

                       String incv="";
                       int incount;
                    %>
                                                        <%    

FileInputStream fii=new FileInputStream("D:\\shivkumar\\shivkumar\\2021\\Esmartjsp\\3.E smart\\code\\web\\Admin\\Rvech.txt");
             byte bbb[]=new byte[fii.available()];
             fii.read(bbb);
             fii.close();
             incv=new String(bbb);
             System.out.println("incv"+incv);
             
           incount=Integer.parseInt(incv);
         incount =incount+1;
         String sss=String.valueOf(incount);
              FileOutputStream fos1=new FileOutputStream("D:\\shivkumar\\shivkumar\\2021\\Esmartjsp\\3.E smart\\code\\web\\Admin\\Rvech.txt");
            fos1.write(sss.getBytes());
            fos1.close();
             String str="ren"+incv;
            
                        %>
   <form action="AddrentAction.jsp" method="post">
        
       <div>
        <label>Vehicle ID</label>
        <input type="text" name="vehicleid" value="<%=str%>" readonly/>
        </div>  
        
        <div>
        <label> Admin Name</label>
        <input type="text" name="aname" value="<%=name%>" readonly/>
        </div>
        
        <div>
        <label>Vehicle Name</label>
        <input type="text" name="vname" required/>
        </div>
        
        <div>
        <label>Vehicle Registration Date</label>
        <input type="Date" name="vrdate" required/>
        </div>
        
        <div>
       <label>Vehicle Number</label>
        <input type="text" name="vnum" required/>
        </div>
            
            <div>
        <label>Price</label>
        <input type="text" name="vsprice" required/>
        </div>
        
        <div>
       <label>Rent From</label>
        <input type="date" name="vrfrom" required/>
        </div>
            
            <div>
        <label>Rent To</label>
        <input type="date" name="vrto" required/>
        </div>
            
        
        
            <div>
        <label>Description</label>
        <textarea type="text" name="vsdesc" required></textarea>
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

