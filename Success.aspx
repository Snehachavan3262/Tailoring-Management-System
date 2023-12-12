<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Success.aspx.cs" Inherits="SuccessInsert" %>

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
        .loader {
  width: 48px;
  height: 48px;
  display: inline-block;
  position: relative;
}
.loader::after,
.loader::before {
  content: '';
  width: 48px;
  height: 48px;
  border: 4px solid #4BB543;
  position: absolute;
  left: 150px;
  top: 50px;
  box-sizing: border-box;
  animation: rotation 2s ease-in-out infinite;
}
.loader::after {
  border-color:  #4BB543;
  animation-delay: 1s;
}

@keyframes rotation {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
} 
.button {
  position: relative;
  padding: 8px 16px;
  background: rgba(205, 241, 176, 0.12);
  border: 1px solid black;
  outline: none;
  border-radius: 7px;
  cursor: pointer;
  margin-bottom:10px;
}

.button:active {
  background: #4BB543;
}

.button__text {
  font: bold 20px "Quicksand", san-serif;
  color: #ffffff;
  transition: all 0.2s;
}

.button--loading .button__text {
  visibility: hidden;
  opacity: 0;
}

.button--loading::after {
  content: "";
  position: absolute;
  width: 16px;
  height: 16px;
  top: 0;
  left: 0;
  right: 0;
  bottom: 20px;
  margin-bottom:10px;
  border: 4px solid transparent;
  border-top-color: #ffffff;
  border-radius: 5px;
  animation: button-loading-spinner 1s ease infinite;
}

@keyframes button-loading-spinner {
  from {
    transform: rotate(0turn);
  }

  to {
    transform: rotate(1turn);
  }
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-wrapper">
            <div class="custom-modal">
              <span class="loader"></span>
                <div class="succes border-bottom"></div>
                <div class="content">
                    <p class="type">Saving Your Record Sucessfully!!!!</p>
                    <p class="message-type"><asp:Label ID="Label1" runat="server"></asp:Label></p>
                    <a href="Default.aspx" class="btn btn-primary">Bcak To HomePage</a>
                    <%--<div class="col-md-12">
                                   
                                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="button" Text="Click To Save Record" style="margin-left:" />
                                </div>--%>
                </div>
            </div>
        </div>


    </form>
</body>
</html>
