﻿<%@ page language="C#" autoeventwireup="true" codefile="Default.aspx.cs" inherits="Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tailor</title>

    <meta charset="utf-8" />
    <meta http-equiv="refresh" content="500;" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon" />


    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet" />

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet" />
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet" />

    <!-- Material Design CDN Links  -->
    <!-- Material Design CDN Links  -->

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0px;
            padding: 0px 20px 20px 20px;
            box-sizing: border-box;
            /*background-image: url(./img/bg.jpg);*/
            background-color:#b317b8ba;
            background-size: cover;
        }

        .abc {
            /*background-image: url(./img/powewater.jpg);
        padding: 0px;
        margin-top:0px;
        margin-left:0px;
        margin-right:0px;
        background-repeat: no-repeat;
       background-size: cover;*/
            text-align: center;
        }

        #central {
            margin-bottom: 0px;
        }

        #Image {
            padding: 20px;
        }

        * {
            box-sizing: border-box;
        }

        .liveContainer {
            padding: 10px 0px 20px 0px;
        }

        #LiveData {
            color: #003153;
            font-size: 22px;
            font-family: Arial;
            padding-right: 25px;
        }

        .flex1 {
            display: flex;
            justify-content: flex-start;
            align-items: center;
        }

        .flex2 {
            display: flex;
            justify-content: flex-end;
            align-items: center;
        }

        .head {
            padding: 0px;
           // background-image: linear-gradient(to bottom,white 40%,#0d939c);
             background-image:linear-gradient(to bottom,white 40%,#8d0d9c);
        }

        .TextFlex {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .card-container {
            padding: 20px;
            background-color: #e0bbed;
        }

        .LogSign {
            display: flex;
            justify-content: flex-end;
        }

            .LogSign > button {
                margin: 0px 10px;
                background-color: #0073cf;
            }

                .LogSign > button:hover {
                    background-color: #0073cf;
                }

        #MainSection {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 4fr));
            grid-gap: 1em;
        }

            #MainSection > div {
            }

        .wow {
        }

        .cat-item {
        }

        .HistoryHead {
             background-image:linear-gradient(to bottom,white 40%,#8d0d9c);
           // background-image: linear-gradient(to bottom,white 10%,#0d939c);
        }

        .Lbllocation {
           background-image:linear-gradient(to bottom,white 40%,#8d0d9c);
            padding: 15px;
        }

        .FooterText {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        .Trending{
    
    overflow-x: hidden;
    
}
.Trending:hover{
    animation-play-state: paused;
}
.trend1{
    display: flex;
    
    animation:trend 10s infinite ease-in-out;
   
}


@keyframes trend{
    10%{
        transform: translateX(0px);
    }
    
    50%{
        transform: translateX(-600px);
    }
    
    
    100%{
        transform: translateX(0px);
    }
}
       
.font{
    display:block;
    color:white;
    text-transform:uppercase;
    font-size:15px;
    margin-top:25px;
}
.btn-primary{
    border-radius:5px;
   margin-left:35px;
 
    background-color:#b317b8ba;
    color:white;
    padding:7px;
}
   </style>

</head>
<body>
    <form id="form1" runat="server">

       
        <h1 class="m-0 text-primary"></h1>
       
       

        <!-- Header Start -->
        <div class="container head" style="margin-top: 10px">
            <div class="row headrow" style="height: 20%; margin-bottom: 0%; padding: 0px 20px 0px">
                <div class="col-md-2 flex1">
                    <img class="rounded-circle" src="img/ladies.png" alt="Header1" height="120px" style="padding: 10px" />
                 
                </div>
                <div class="col-md-8 abc TextFlex">
                    <%--style="text-shadow: 2px 4px 6px #32eaf6;"--%>
                   
    <nav class="navbar navbar-expand-lg navbar-light ">

 
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#" style="margin-right:30px;margin-left:30px;"> <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">
            
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Fabric.aspx">FABRICS</a>
      </li>
    <li class="nav-item">
        <a class="nav-link" href="buttons.aspx">BUTTONS</a>
      </li>
  
    <li class="nav-item">
        <a class="nav-link" href="Style.aspx">Style</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="buttons.aspx">Collers</a>
      </li>
    </ul>
      
  </div>
        <div class="col-md-3 LogSign" >
              <asp:LinkButton ID="LinkButton1" CssClass=" btn-primary" runat="server" OnClick="LinkButton1_Click">User Login</asp:LinkButton> 
     
     </div>
        <div class="col-md-3 LogSign" >
              <asp:LinkButton ID="admin" CssClass=" btn-primary" runat="server" Onclick="admin_Click" >Admin Login</asp:LinkButton> 
     
     </div>
</nav>

  
                </div>
                <div class="col-md-2 flex2 tada">
                    
                    <h2><i class="fa fa-shopping-cart"></i></h2>
                    <span class="hidden-xs hidden-sm hidden-md">MY CART</span>
                  
              
                </div>
            </div>
        </div>

        <!-- Header End -->


        <!-- Background_Image Start -->
        <div class="container-xxl py-3" style="padding: 0px;">
            <div class="container" style="padding: 0px;">
                <div class="card-container">
                    <div class="container liveContainer">
                        <div class="row">
                            <div class="col-md-6">
                               
                                <img src="./img/bg_ladies.jpg" style="width:1100px;" />
                            </div>
                           
                        </div>
                    </div>
                   
                  
        
                    </div>
                </div>


                <%-- <div class="container-xxl py-5">--%>
                <div class="container" style="margin-top: 20px; padding: 0px;">
                    <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 100%; padding: 0px; margin-bottom: 0px;">

                        <h3 class="mb-3 HistoryHead" style="padding: 10px; margin: 0px;">
                           
                           Choose the Product you would like to stitch
                        </h3>

                    </div>
                </div>
             
            </div>
       <!-- Slider Start -->
<div class="Trending" >
    <div class="trend1">
        <div style="margin-right:25px;">
            
           
            <img src="https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/f/a/tr:w-300,/fablestreet_tr08bg_1.jpg?rnd=20200526195200"/></a>
           <br />
            <p></p>
        </div>

        <div style="margin-right:25px;">
          
            <img src="https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/2/7/tr:w-300,/276f74bECWTE00203_1.jpg?rnd=20200526195200"/>
         <br />
        </div>

        <div style="margin-right:25px;">
           
            <img src="https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/r/k/tr:w-300,/rkb5038_1_39365b44.jpg?rnd=20200526195200"/>
        <br />
        </div>
   

    
        <div style="margin-right:25px;">
           
            <img src="https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/4/f/tr:w-300,/4fc1027A_2501-Green_1.jpg?rnd=20200526195200"/>
       <br />
        </div>


        <div style="margin-right:25px;">
            
            <img src="https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/b/9/tr:w-300,/b95c8ffMEERA-MER885_1.jpg?rnd=20200526195200" />
        <br />
        </div>

       

    </div>
     <div class="trend1">
        <div style="margin-right:25px;">
            
           
            <img src="https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/j/o/tr:w-300,/jompers-ko_586green_1_9ef4c5ea.jpg?rnd=20200526195200"/></a>
           
        </div>

        <div style="margin-right:25px;">
          
            <img src="https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/6/a/tr:w-300,/6a45f1fTBH-BUFFET-OL_1.jpg?rnd=20200526195200"/>
         <br />
        </div>

        <div style="margin-right:25px;">
           
            <img src="https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/b/8/tr:w-300,/b8c7109298848501_1.jpg?rnd=20200526195200"/>
        <br />
        </div>
   

    
        <div style="margin-right:25px;">
           
            <img src="https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/2/c/tr:w-300,/2c3e391JAVINCLSK01_1.jpg?rnd=20200526195200"/>
          
        </div>


        <div style="margin-right:25px;">
            
            <img src="https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/3/8/tr:w-300,/3863b77102407701_1.jpg?rnd=20200526195200"/>
         
        </div>

    

    </div>
</div>


          <!-- Slider End -->



        <!-- Team Start -->
        <div class="container-xxl py-5" style="padding-top: 0px; s">
            <div class="container" style="padding: 0px;">
                <%--<div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 100%; padding: 0px;">
                    <h3 class="mb-3 Lbllocation">GEOGRAPHIC LOCATION</h3>
                    <p></p>
                </div>--%>

               <%-- <div class="dispalynone1">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d60553.99025659691!2d73.77315497431984!3d18.455355636320064!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc295a4b5a14429%3A0x27239fb1c367175f!2sCentral%20Water%20and%20Power%20Research%20Station!5e0!3m2!1sen!2sin!4v1600768211636!5m2!1sen!2sin" width="100%" height="450" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>--%>

                <!-- Back to Top -->
                <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
            </div>
            <div class="footer" style="background-color: #ea73fb">
                <div class="col-xs-12 FooterText" style="font-size: 15px; text-align-last: end;">
                    <a href="http://weather.aashaymeasurements.com/" style="color: rgb(24, 17, 86); font-weight: bold">Copyright &copy; 2022 All rights reserved.</a>
                </div>
                <div class="col-lg-6 col-xs-12 " style="text-align-last: end;">

                    <%--  <a href="http://aashaymeasurements.com/index.html" style="color: rgb(24, 17, 86); font-weight: bold">Home</a> | <a href="login.aspx" style="color: rgb(24, 17, 86); font-weight: bold">Login</a>--%>

                    <%--    <a href="http://aashaymeasurements.com/aboutus.html"  style=" color:rgb(24, 17, 86);font-weight:bold">About Us</a> | <a href="http://aashaymeasurements.com/index.html"  style=" color:rgb(24, 17, 86);font-weight:bold">Product</a> | <a href="http://aashaymeasurements.com/support.html"  style=" color:rgb(24, 17, 86);font-weight:bold">Support</a> | <a href="http://aashaymeasurements.com/contactus.html"  style=" color:rgb(24, 17, 86);font-weight:bold">Contact</a>--%>
                </div>
            </div>
        </div>
        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </form>
</body>
</html>

