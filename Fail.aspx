<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fail.aspx.cs" Inherits="Fail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>tailor</title>    
     <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />

    <link href="Design/dist/font-awesome/css/font-awesome.css" rel="stylesheet"  />
    <style>
        .succes
        {
            background-color: #4BB543;
        }

        .succes-animation
        {
            animation: succes-pulse 2s infinite;
        }

        .danger
        {
            background-color: #CA0B00;
        }

        .danger-animation
        {
            animation: danger-pulse 2s infinite;
        }

        .custom-modal
        {
            position: relative;
            width: 350px;
            min-height: 250px;
            background-color: #fff;
            border-radius: 30px;
            margin: 40px 10px;
        }

            .custom-modal .content
            {
                position: absolute;
                width: 100%;
                text-align: center;
                bottom: 0;
            }

                .custom-modal .content .type
                {
                    font-size: 18px;
                    color: #999;
                }

                .custom-modal .content .message-type
                {
                    font-size: 24px;
                    color: #000;
                }

            .custom-modal .border-bottom
            {
                position: absolute;
                width: 300px;
                height: 20px;
                border-radius: 0 0 30px 30px;
                bottom: -20px;
                margin: 0 25px;
            }

            .custom-modal .icon-top
            {
                position: absolute;
                width: 100px;
                height: 100px;
                border-radius: 50%;
                top: -30px;
                margin: 0 125px;
                font-size: 30px;
                color: #fff;
                line-height: 100px;
                text-align: center;
            }

        @keyframes succes-pulse
        {
            0%
            {
                box-shadow: 0px 0px 30px 20px rgba(75, 181, 67, .2);
            }

            50%
            {
                box-shadow: 0px 0px 30px 20px rgba(75, 181, 67, .4);
            }

            100%
            {
                box-shadow: 0px 0px 30px 20px rgba(75, 181, 67, .2);
            }
        }

        @keyframes danger-pulse
        {
            0%
            {
                box-shadow: 0px 0px 30px 20px rgba(202, 11, 0, .2);
            }

            50%
            {
                box-shadow: 0px 0px 30px 20px rgba(202, 11, 0, .4);
            }

            100%
            {
                box-shadow: 0px 0px 30px 20px rgba(202, 11, 0, .2);
            }
        }


        .page-wrapper
        {
            height: 75vh;
            background-color: #eee;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 80px 0;
        }

        body
        {
            margin: 0;
            font-family: 'Roboto';
        }

        @media only screen and (max-width: 800px)
        {
            .page-wrapper
            {
                flex-direction: column;
            }
        }

        .checkmark {
  width: 56px;
  height: 56px;
  border-radius: 50%;
  display: block;
  stroke-width: 2;
  stroke: #fff;
  stroke-miterlimit: 10;
  box-shadow: inset 0px 0px 0px #CA0B00;
  animation: fill .4s ease-in-out .4s forwards, scale .3s ease-in-out .9s both;
  margin-left:140px;
  margin-top:50px;
}

.checkmark_circle {
  stroke-dasharray: 166;
  stroke-dashoffset: 166;
  stroke-width: 2;
  stroke-miterlimit: 10;
  stroke: #CA0B00;
  fill: none;
  animation: stroke 0.6s cubic-bezier(0.65, 0, 0.45, 1) forwards;
}

.checkmark_check {
  transform-origin: 50% 50%;
  stroke-dasharray: 48;
  stroke-dashoffset: 48;
  animation: stroke 0.3s cubic-bezier(0.65, 0, 0.45, 1) 0.8s forwards;
}

@keyframes stroke {
  100% {
    stroke-dashoffset: 0;
  }
}
@keyframes scale {
  0%, 100% {
    transform: none;
  }
  50% {
    transform: scale3d(1.1, 1.1, 1);
  }
}
@keyframes fill {
  100% {
    box-shadow: inset 0px 0px 0px 30px #CA0B00;
  }
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-wrapper">
            <div class="custom-modal">
               <%-- <div class="succes succes-animation icon-top"><i class="fa fa-bell"></i></div>--%>
                <div class="wrapper">
<svg class="checkmark" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 52 52"><circle class="checkmark_circle" cx="26" cy="26" r="25" fill="none"/><path class="checkmark_check" fill="none" d="M14.1 14.1l23.8 23.8 m0,-23.8 l-23.8,23.8"/></svg>
</div>
                <div class="danger border-bottom"></div>
                <div class="content">
                    <%--<p class="type">Registration Form</p>--%>
                    <p class="message-type"><asp:Label ID="Label1" runat="server"></asp:Label></p>
                    <a href="Default.aspx" class="btn btn-primary">Bcak To HomePage</a>
                </div>
            </div>
        </div>


    </form>
</body>
</html>