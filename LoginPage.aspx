<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage"%>


<!DOCTYPE html>
<title>Tailor</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
    <style>
              body {
  margin: 0;
  padding: 0;
    background-color:rgba(225, 72, 242, 0.37);
  height: 100vh;
}
        .register{
             background-color:rgba(213, 77, 234, 0.52);
   // background: -webkit-linear-gradient(left, #af31aaf5, #ff00fec7);
   // background: -webkit-linear-gradient(left, #3931af, #00c6ff);
    margin-top: 10%;
    padding: 3%;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 80%;
    background: #f8f9fa;
    font-weight: bold;
    color: #383d41;
    margin-top: 15%;
    margin-bottom: 3%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 7%;
}
.btnRegister{
    
    margin-top: 10%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #c900cc;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
   
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #0062cc;
    border-radius: 1.5rem;
    width: 28%;
    float: right;
}
.register .nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #0062cc;
    border: 2px solid #0062cc;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color: #495057;
}
    </style>
<body>
   
<div class="container register">
            <div class="row">
                <div class="col-md-3 register-left">
                   <p></p>
                    <h2>Welcome To</h2>
                    <h4>Login</h4>

                </div>
                <div class="col-md-9 register-right">

                    <div class="tab-content" id="myTabContent">

                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            
                            <h3 class="register-heading">Sign In</h3>
                            <form runat="server">
                                <div class="row register-form">
                                    <div class="col-md-2"></div>
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <input id="user" type="text" name="Username" class="input form-control" placeholder="Enter your Username" />
                                        </div>
                                        <div class="form-group">
                                            <input id="pass" type="password" name="Password" class="input form-control" data-type="password" placeholder="Enter your password" />
                                        </div>
                                        <div class="group">
                                            <input id="check" type="checkbox" class="check" checked />
                                            <label for="check"><span class="icon"></span>Keep me Signed in</label>
                                        </div>
                                        <div class="form-group">
                                           <asp:Button ID="login" runat="server" class="btnRegister" Text="Sign IN" OnClick="login_Click2"/>
                                           
                                           <a href="Register.aspx"  style="text-align:center;color:#c900cc;">Don't have an account?</a>
                                      </div>
                                    </div>
                                    <div class="col-md-2"></div>
                                </div>
                            </form>

                        </div>
                    </div>

                </div>
               
    </body>

