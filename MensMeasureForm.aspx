<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MensMeasureForm.aspx.cs" Inherits="MensMeasureForm" %>

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="description" content="multikart">
    <meta name="keywords" content="multikart">
    <meta name="author" content="multikart">


    <!--Google font-->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet" type="text/css" href="../assets/css/fontawesome.css">

    <!--Slick slider css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/slick-theme.css">

    <!-- Animate icon -->
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.css">

    <!-- Themify icon -->
    <link rel="stylesheet" type="text/css" href="../assets/css/themify-icons.css">

    <!-- Bootstrap css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">

    <!-- Theme css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/color1.css" media="screen" id="color">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Multikart admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Multikart admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="pixelstrap">

    <title>Tailor</title>

    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Font Awesome-->
    <link rel="stylesheet" type="text/css" href="../assets/css/fontawesome.css">

    <!-- Flag icon-->
    <link rel="stylesheet" type="text/css" href="../assets/css/flag-icon.css">

    <!-- jsgrid css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/jsgrid.css">

    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">

    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/admin.css">
    <script>

        function allowOnlyNumber(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }

        function demo(j) {
            let i = document.getElementById('prn');
            let k = document.getElementById('prnlabel');

            if (j == "Y")
            {
                i.style.borderColor = "Red";
                k.style.color = "Red";
            }
            else
            {
                i.style.borderColor = "Green";
                k.style.color = "Green";
            }
            
        }
    function phoneNumberCheck(phoneNumber)
{
        var str =phoneNumber
       alert(str.length)
   if(phoneNumber.value.match(regEx))
     {
      return true;
     }
   else
     {
     alert("Please enter a valid phone number.");
     return false;
     }
}    
</script> 
</head>
<body>


<!-- page-wrapper Start-->
<div class="page-wrapper">

    <!-- Page Header Start-->
    <div class="page-main-header">
        <div class="main-header-right row">
            <div class="main-header-left d-lg-none">
                <div class="logo-wrapper"><a href="index.html"><img class="blur-up lazyloaded" alt=""></a></div>
            </div>
            <div class="mobile-sidebar">
                <div class="media-body text-right switch-sm">
                    <label class="switch"><a href="#"><i id="sidebar-toggle" data-feather="align-left"></i></a></label>
                </div>
            </div>
            <div class="nav-right col">
                <ul class="nav-menus">
                    <li>
                        
                    <li class="onhover-dropdown">
                        <div class="media align-items-center"><img class="align-self-center pull-right img-50 rounded-circle blur-up lazyloaded" src="img/ladies.png" alt="header-user">
                            <div class="dotted-animation"><span class="animate-circle"></span><span class="main-circle"></span></div>
                        </div>
                        <ul class="profile-dropdown onhover-show-div p-20">
                           
                            <li><a href="Logout.aspx"><i data-feather="log-out"></i>Logout</a></li>
                        </ul>
                    </li>
                </ul>
                <div class="d-lg-none mobile-toggle pull-right"><i data-feather="more-horizontal"></i></div>
            </div>
        </div>
    </div>
    <!-- Page Header Ends -->

    <!-- Page Body Start-->
    <div class="page-body-wrapper">

        <!-- Page Sidebar Start-->
        <div class="page-sidebar">
                <div class="main-header-left d-none d-lg-block">
                    <div class="logo-wrapper">
                        <a href="index.html">
                            <img class="blur-up lazyloaded" alt=""></a>
                    </div>
                </div>
                <div class="sidebar custom-scrollbar">
                    <ul class="sidebar-menu">
                        <li><a class="sidebar-header" href="Dashboard.aspx"><i data-feather="box"></i><span>User Dashboard</span><i class="fa fa-angle-right pull-right"></i></a>
                            <ul class="sidebar-submenu">
                                <%--<li><a href="LediesMeasureForm.aspx"><i class="fa fa-circle"></i>Ladies' Measurements</a></li>
                                 <li><a href="MensMeasureForm.aspx"><i class="fa fa-circle"></i>Men'S Measurements</a></li>--%>
                               <%-- <li><a href="Category.aspx"><i class="fa fa-circle"></i>Category Master</a></li>
                            </ul>
                        </li>
                         <li><a class="sidebar-header" href=""><i data-feather="box"></i><span>Master</span><i class="fa fa-angle-right pull-right"></i></a>
                            <ul class="sidebar-submenu">
                              <%--  <li><a href="chart.aspx"><i class="fa fa-circle"></i>Graphical Report</a></li>
                                <li><a href="DayToDayReport.aspx"><i class="fa fa-circle"></i>Tabular Report</a></li>--%>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        <!-- Page Sidebar Ends-->

        <!-- Right sidebar Start-->
        <div class="right-sidebar" id="right_side_bar">
            <div>
                <div class="container p-0">
                    <div class="modal-header p-l-20 p-r-20">
                        <div class="col-sm-8 p-0">
                            <h6 class="modal-title font-weight-bold">FRIEND LIST</h6>
                        </div>
                        <div class="col-sm-4 text-right p-0"><i class="mr-2" data-feather="settings"></i></div>
                    </div>
                </div>
                <div class="friend-list-search mt-0">
                    <input type="text" placeholder="search friend"><i class="fa fa-search"></i>
                </div>
                <div class="p-l-30 p-r-30">
                    <div class="chat-box">
                        <div class="people-list friend-list">
                            <ul class="list">
                                <li class="clearfix"><img class="rounded-circle user-image" src="../assets/images/dashboard/user.png" alt="">
                                    <div class="status-circle online"></div>
                                    <div class="about">
                                        <div class="name">Vincent Porter</div>
                                        <div class="status"> Online</div>
                                    </div>
                                </li>
                                <li class="clearfix"><img class="rounded-circle user-image" src="../assets/images/dashboard/user1.jpg" alt="">
                                    <div class="status-circle away"></div>
                                    <div class="about">
                                        <div class="name">Ain Chavez</div>
                                        <div class="status"> 28 minutes ago</div>
                                    </div>
                                </li>
                                <li class="clearfix"><img class="rounded-circle user-image" src="../assets/images/dashboard/user2.jpg" alt="">
                                    <div class="status-circle online"></div>
                                    <div class="about">
                                        <div class="name">Kori Thomas</div>
                                        <div class="status"> Online</div>
                                    </div>
                                </li>
                                <li class="clearfix"><img class="rounded-circle user-image" src="../assets/images/dashboard/user3.jpg" alt="">
                                    <div class="status-circle online"></div>
                                    <div class="about">
                                        <div class="name">Erica Hughes</div>
                                        <div class="status"> Online</div>
                                    </div>
                                </li>
                                <li class="clearfix"><img class="rounded-circle user-image" src="../assets/images/dashboard/man.png" alt="">
                                    <div class="status-circle offline"></div>
                                    <div class="about">
                                        <div class="name">Ginger Johnston</div>
                                        <div class="status"> 2 minutes ago</div>
                                    </div>
                                </li>
                                <li class="clearfix"><img class="rounded-circle user-image" src="../assets/images/dashboard/user5.jpg" alt="">
                                    <div class="status-circle away"></div>
                                    <div class="about">
                                        <div class="name">Prasanth Anand</div>
                                        <div class="status"> 2 hour ago</div>
                                    </div>
                                </li>
                                <li class="clearfix"><img class="rounded-circle user-image" src="../assets/images/dashboard/designer.jpg" alt="">
                                    <div class="status-circle online"></div>
                                    <div class="about">
                                        <div class="name">Hileri Jecno</div>
                                        <div class="status"> Online</div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Right sidebar Ends-->

        <div class="page-body">

            <!-- Container-fluid starts-->
            <div class="container-fluid">
                <div class="page-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="page-header-left">
                                <!--<h3>Category
                                    <small>Maangalya Admin panel</small>
                                </h3>-->
                                <h3>MENS' MEASUREMENTS
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Container-fluid Ends-->
                <div class="form-row">
                        <div class="col-md-4  col-sm-4 col-lg-4" style="background-color:#f6b9b9;margin-left:100px;height:90px;border-bottom-left-radius:30px; border-top-right-radius:30px; ">
                           
                                    <div style="margin-top: 12px;">
                                        <h4 style="text-align:center ; font-weight: bold; "> Username: <%=ServerValue1 %> </h4>
                                         <h4 style="text-align:center ; font-weight: bold;">Gender: <%=ServerValue %></h4>
                                    </div>

                                </div>
                 </div>
             <div class="form-row">
                   <div class="col-md-4  col-sm-4 col-lg-4" style="background-color:#f6b9b9;margin-left:600px;height:90px;border-bottom-left-radius:30px; border-top-right-radius:30px; ">
                                    <h5 style="text-align:center ; font-weight: bold; ">Order Status</h5>
                                    <div style="margin-top: 10px;margin-left:25px;">
                                       <%-- <h4 style="text-align:center ; font-weight: bold;  "> Order Status: <%=ServerValue2 %> </h4>--%>
                                        <asp:Label ID="txt1" runat="server" style="text-align:center ;font-weight:7px;"></asp:Label>
                                    </div>

                                </div>
                            </div>
            <!-- Container-fluid starts-->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card">
                            
                            <section class="register-page section-b-space">
        <div class="container" style="margin-top:0px">
            <div class="row">
                <div class="col-lg-12">
                    <h3>Personal Information</h3>
                    <div class="theme-card">
                        <form name="form1" runat="server" class="theme-form">
                           
                                    <div class="form-row">
                                <div class="col-md-3">
                                   
                                    <input type="text" class="form-control" id="MobileNo" name="MobileNo" placeholder="Mobile"
                                        required="" style="margin-left:0px">
                                </div>
                                   
                                <div class="col-md-3">
                                    
                                    <input type="text" class="form-control" id="Email" name="Email" placeholder="Email"
                                        required=""  style="margin-left:0px">
                                </div>
                                     <div class="col-md-3">
                                   
                                    <input type="text" class="form-control" id="FullName" name="FullName" placeholder="FullName"
                                        required="" style="margin-left:0px">
                                </div>
                                     <div class="col-md-3">
                                   <asp:DropDownList ID="Type" CssClass="form-control" Height="50px" runat="server" style="margin-left:0px; margin-bottom:10px">
                                        <asp:ListItem>Unit of Measurement</asp:ListItem>
                                       <asp:ListItem>Inches</asp:ListItem>
                                       <asp:ListItem>Centimeters</asp:ListItem>
                                   </asp:DropDownList>

                                </div>
                            </div>
                              <div class="form-row">
                                     <div class="col-md-3">
                                    <input type="text" class="form-control" id="age" name="age" placeholder="Age"
                                        required="" style="margin-left:0px">
                                </div> 
                                     
                                     <div class="col-md-3">
                                   <asp:DropDownList ID="shirtfabric" runat="server" CssClass="form-control" Height="50px" style="margin-left:0px; margin-bottom:10px" OnSelectedIndexChanged="shirtfabric_SelectedIndexChanged" AutoPostBack="true" >
                                        <asp:ListItem>< Fabric For Shirt ></asp:ListItem>
                                      
                                   </asp:DropDownList>

                                </div>
                                     <div class="col-md-3">
                                   <asp:DropDownList ID="shirt" CssClass="form-control" Height="50px" runat="server" style="margin-left:0px; margin-bottom:10px">
                                        <asp:ListItem>Shirt Style</asp:ListItem>
                                       <asp:ListItem>T Shirt</asp:ListItem>
                                       <asp:ListItem>Dress Shirt</asp:ListItem>
                                        <asp:ListItem>TShirt</asp:ListItem>
                                       <asp:ListItem>Jean Jacket</asp:ListItem>
                                        <asp:ListItem>Kurtas</asp:ListItem>
                                       <asp:ListItem>PoloShirt</asp:ListItem>
                                        <asp:ListItem>TShirt</asp:ListItem>
                                       <asp:ListItem>PoloShirt</asp:ListItem>
                                   </asp:DropDownList>

                                </div>

                                     <div class="col-md-3">
                                   <asp:DropDownList ID="coller" CssClass="form-control" Height="50px" runat="server" style="margin-left:0px; margin-bottom:10px">
                                        <asp:ListItem>CollerStyle</asp:ListItem>
                                       <asp:ListItem>Flat</asp:ListItem>
                                       <asp:ListItem>Standing</asp:ListItem>
                                        <asp:ListItem>Rolled</asp:ListItem>
                                       <asp:ListItem>Winged</asp:ListItem>
                                        <asp:ListItem>Straight</asp:ListItem>
                                       <asp:ListItem>Standing</asp:ListItem>
                                   </asp:DropDownList>

                                </div>
                                   </div>
                                <div class="form-row">
                                      <div class="col-md-3">
                                   <asp:DropDownList ID="pantfabric" CssClass="form-control" Height="50px" runat="server" style="margin-left:0px; margin-bottom:10px">
                                        <asp:ListItem>Fabric For Pant</asp:ListItem>
                                       <asp:ListItem>Jeans</asp:ListItem>
                                       <asp:ListItem>Denim</asp:ListItem>
                                        <asp:ListItem>Velvet</asp:ListItem>
                                       <asp:ListItem>Terrycloth</asp:ListItem>
                                        <asp:ListItem>Streched Fabric</asp:ListItem>
                                       <asp:ListItem>Chiffon</asp:ListItem>
                                   </asp:DropDownList>

                                </div>
                                    <div class="col-md-3">
                                   <asp:DropDownList ID="pant" CssClass="form-control" Height="50px" runat="server" style="margin-left:0px; margin-bottom:10px">
                                        <asp:ListItem>PantStyle</asp:ListItem>
                                       <asp:ListItem>Trousers</asp:ListItem>
                                       <asp:ListItem>Linen Trouser</asp:ListItem>
                                        <asp:ListItem>Goggers</asp:ListItem>
                                       <asp:ListItem>Cargo</asp:ListItem>
                                        <asp:ListItem>Tracksuite Bottom



                                        </asp:ListItem>
                                       <asp:ListItem>Chiffon</asp:ListItem>
                                   </asp:DropDownList>

                                </div>
                                      <div class="col-md-3">
                                   <asp:DropDownList ID="button" CssClass="form-control" Height="50px" runat="server" style="margin-left:0px; margin-bottom:10px">
                                        <asp:ListItem>Buttons</asp:ListItem>
                                       <asp:ListItem>Flat</asp:ListItem>
                                       <asp:ListItem>Shunk</asp:ListItem>
                                        <asp:ListItem>Metal</asp:ListItem>
                                       <asp:ListItem>Plastic</asp:ListItem>
                                        <asp:ListItem>Fabric</asp:ListItem>
                                       <asp:ListItem>Press</asp:ListItem>
                                   </asp:DropDownList>

                                </div>
                               <div class="col-md-3">
                                    <asp:TextBox ID="price" runat="server" placeholder="Amount" CssClass="form-control"  Height="50px" runat="server" style="margin-left:0px; margin-bottom:10px"></asp:TextBox>
                                   
                                </div>
                                     
                            </div>


                                                            
                           
                            <div class="form-row">
                                <div class="col-md-6">
                                   
                                    <input type="text" class="form-control" id="Weight" name="Weight" placeholder="Weight"
                                        required="" style="margin-left:0px">
                                </div>

                                <div class="col-md-6">
                                    
                                    <input type="text" class="form-control" id="Height" name="Height" placeholder="Height"
                                        required=""  style="margin-left:0px">
                                </div>
                            </div>
                                  <div class="form-row">
                                <div class="col-md-6">
                                   
                                    <input type="number" class="form-control" id="FullShoulder" name="FullShoulder" placeholder="Full Shoulder Width"
                                        required="" style="margin-left:0px">
                                </div>

                                <div class="col-md-6">
                                    
                                    <input type="number" class="form-control" id="BackShoulder" name="BackShoulder" placeholder="Back Shoulder Width"
                                        required=""  style="margin-left:0px">
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="col-md-6">
                                   
                                    <input type="number" class="form-control" id="FrontShoulder" name="FrontShoulder" placeholder="Front Shoulder Width"
                                        required="" style="margin-left:0px">
                                </div>

                                <div class="col-md-6">
                                    
                                    <input type="number" class="form-control" id="Chest" name="Chest" placeholder="Full Chest"
                                        required=""  style="margin-left:0px">
                                </div>
                            </div>
                             <div class="form-row">
                                <div class="col-md-6">
                                   
                                    <input type="number" class="form-control" id="Sleeve" name="Sleeve" placeholder="Sleeve Length"
                                        required="" style="margin-left:0px">
                                </div>

                                <div class="col-md-6">
                                    
                                    <input type="number" class="form-control" id="Neck" name="Neck" placeholder="Neck"
                                        required=""  style="margin-left:0px">
                                </div>
                            </div>
                             <div class="form-row">
                                <div class="col-md-6">
                                   
                                    <input type="number" class="form-control" id="JacketLength" name="JacketLength" placeholder="Front Jacket Length"
                                        required="" style="margin-left:0px">
                                </div>

                                <div class="col-md-6">
                                    
                                    <input type="number" class="form-control" id="Crotch" name="Crotch" placeholder="Crotch"
                                        required=""  style="margin-left:0px">
                                </div>
                            </div>
                             <div class="form-row">
                                <div class="col-md-6">
                                   
                                    <input type="number" class="form-control" id="Waist" name="Waist" placeholder="Trouser Waist"
                                        required="" style="margin-left:0px">
                                </div>

                                <div class="col-md-6">
                                    
                                    <input type="number" class="form-control" id="Hip" name="Hip" placeholder="Hip"
                                        required=""  style="margin-left:0px">
                                </div>
                            </div>
                             <div class="form-row">
                                <div class="col-md-6">
                                   
                                    <input type="number" class="form-control" id="TrouserL" name="TrouserL" placeholder="Trouser Length"
                                        required="" style="margin-left:0px">
                                </div>

                                <div class="col-md-6">
                                    
                                    <input type="number" class="form-control" id="TrouserT" name="TrouserT" placeholder="Trouser Tight"
                                        required=""  style="margin-left:0px">
                                </div>
                            </div>
                             <div class="form-row">
                                <div class="col-md-6">
                                   
                                    <input type="number" class="form-control" id="TrouserC" name="TrouserC" placeholder="Trouser Cuff"
                                        required="" style="margin-left:0px">
                                </div>

                                <div class="col-md-6">
                                    
                                    <input type="number" class="form-control" id="Seat" name="Seat" placeholder="Seat"
                                        required=""  style="margin-left:0px">
                                </div>
                            </div>
                             <div class="form-row">
                                    <div class="col-md-6">
                                         <textarea rows="20px" cols="30px" class="form-control" id="suggest" name="suggest" placeholder="Suggestions if any"
                                        required=""  style="height:100px";></textarea>
                                    
                                  
                                </div>
                                <div class="col-md-6">
                                   
                                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" CssClass="btn btn-solid" Text="Submit Details" />
                                </div>

                                
                            </div>
                           
                          
                            </div>

                              



                            </form>
                               
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Section ends-->
                             



                        </div>
                    </div>
                </div>
            </div>
            <!-- Container-fluid Ends-->

        </div>

        <!-- footer start-->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 footer-copyright">
                        <p class="mb-0">Copyright 2020 @</p>
                    </div>
                    <div class="col-md-6">
                        <p class="pull-right mb-0">Hand crafted & made with<i class="fa fa-heart"></i></p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- footer end-->

    </div>

</div>

<!-- latest jquery-->
<script src="../assets/js/jquery-3.3.1.min.js"></script>

<!-- Bootstrap js-->
<script src="../assets/js/popper.min.js"></script>
<script src="../assets/js/bootstrap.js"></script>

<!-- feather icon js-->
<script src="../assets/js/icons/feather-icon/feather.min.js"></script>
<script src="../assets/js/icons/feather-icon/feather-icon.js"></script>

<!-- Sidebar jquery-->
<script src="../assets/js/sidebar-menu.js"></script>

<!--Customizer admin-->
<script src="../assets/js/admin-customizer.js"></script>

<!-- Jsgrid js-->
<script src="../assets/js/jsgrid/jsgrid.min.js"></script>
<script src="../assets/js/jsgrid/griddata-manage-product.js"></script>
<script src="../assets/js/jsgrid/jsgrid-manage-product.js"></script>

<!--right sidebar js-->
<script src="../assets/js/chat-menu.js"></script>

<!--script admin-->
<script src="../assets/js/admin-script.js"></script>

</body>
</html>


