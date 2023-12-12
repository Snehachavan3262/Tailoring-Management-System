<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>
<title>Tailor</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
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


    .register {
        background-color:rgba(213, 77, 234, 0.52);
        margin-top: 10%;
        padding: 3%;
    }

    .register-left {
        text-align: center;
        color: #fff;
        margin-top: 4%;
    }

        .register-left input {
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

    .register-right {
        background: #f8f9fa;
        border-top-left-radius: 10% 50%;
        border-bottom-left-radius: 10% 50%;
    }

    .register-left img {
        margin-top: 15%;
        margin-bottom: 5%;
        width: 25%;
        -webkit-animation: mover 2s infinite alternate;
        animation: mover 1s infinite alternate;
    }

    @-webkit-keyframes mover {
        0% {
            transform: translateY(0);
        }

        100% {
            transform: translateY(-20px);
        }
    }

    @keyframes mover {
        0% {
            transform: translateY(0);
        }

        100% {
            transform: translateY(-20px);
        }
    }

    .register-left p {
        font-weight: lighter;
        padding: 12%;
        margin-top: -9%;
    }

    .register .register-form {
        padding: 10%;
        margin-top: 7%;
    }

    .btnRegister {
        float: right;
        margin-top: 10%;
        margin-right: 20%;
        border: none;
        border-radius: 1.5rem;
        padding: 5%;
        background: #c900cc;
        color: #fff;
        font-weight: 600;
        width: 50%;
        cursor: pointer;
    }

    .register .nav-tabs {
        margin-top: 3%;
        border: none;
        background: #0062cc;
        border-radius: 1.5rem;
        width: 28%;
        float: right;
    }

        .register .nav-tabs .nav-link {
            padding: 2%;
            height: 34px;
            font-weight: 600;
            color: #fff;
            border-top-right-radius: 1.5rem;
            border-bottom-right-radius: 1.5rem;
        }

            .register .nav-tabs .nav-link:hover {
                border: none;
            }

            .register .nav-tabs .nav-link.active {
                width: 100px;
                color: #0062cc;
                border: 2px solid #0062cc;
                border-top-left-radius: 1.5rem;
                border-bottom-left-radius: 1.5rem;
            }

    .register-heading {
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
                <h4>Registration</h4>

            </div>
            <div class="col-md-9 register-right">

                <div class="tab-content" id="myTabContent">

                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                        <h3 class="register-heading">Sign Up</h3>
                        <form runat="server">
                            <div class="row register-form ">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input id="name" type="text" name="Name" class="input form-control" required="true" placeholder="Enter your Full Name" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input id="mobileNo" type="text" name="MobileNo" class="input form-control" required="true" placeholder="Enter your Mobile No" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input id="address" name="Address" type="text" class="input form-control" required="true" placeholder="Enter your Address " />
                                        </div>
                                    </div>
                                    <div class="col-md-6">

                                        <div class="form-group">
                                            <input id="user" type="text" name="Username" class="input form-control" required="true" placeholder="Enter your Username" />
                                        </div>
                                      
                                    </div>
                                </div>

                                 <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                           <input id="pass " type="password" name="Password" required="true" class="input form-control" data-type="password" placeholder="Enter your Password" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">

                                        <div class="form-group">
                                             <asp:DropDownList ID="Gender" class="input form-control"  style="width:100%" placeholder="Station" runat="server"  Font-Size="Medium">
                                                        <asp:ListItem>< Select Gender ></asp:ListItem>
                                                        <asp:ListItem>Female</asp:ListItem>
                                                        <asp:ListItem>Male</asp:ListItem>
                                                        <asp:ListItem>Other</asp:ListItem>

                                                    </asp:DropDownList>
                                           
                                        </div>
                                      
                                    </div>
                                </div>
                                


                                <div class="row" style="align-content: center;">

                                     <div class="col-sm-6">
                                        <div>
                                            <a href="LoginPage.aspx" type="button" class="btnRegister" style="text-align: center;">Sign in </a>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <asp:Button ID="button2" runat="server" class="btnRegister" Text="Sign Up" OnClick="button2_Click" />
                                        </div>
                                    </div>

                                   
                                </div>

                            </div>
                            </div>
                        </form>
                    </div>




                </div>
            </div>

        </div>
</body>
