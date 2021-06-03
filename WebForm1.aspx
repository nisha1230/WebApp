<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Login Form</title>
    <script src="jquery-3.6.0.js.js"></script>
<script> 
    $(document).ready(function () {
        $('#btnSave').click(function () {

           /* var UserName = $("#txtUserName").val();
            var password = $("#txtPassword").val();

              if (UserName == "") {
                  alert("Please Enter UserName");
                  return false;
              }
              if (password == "") {
                  alert("Please Enter Password");
                  return false;
              }
             

        })
    });
    </script>
  
       
    <style type="text/css">
        .newStyle1 {
            width: 40px;
            height: 24px;
            top: 18px;
            right: 15px;
            position: static;
            background-color: #C0C0C0;
            padding: 20px;
        }
        .newStyle2 {
            background-color: #C0C0C0;
            padding: 26px 32px 17px 32px;
        }
        .newStyle3 {
            padding: 30px;
            margin: 11px;
            background-color: #9999FF;
        }
        .newStyle4 {
            line-height: 40px;
            background-color: #C0C0C0;
        }
    </style>
</head>
<body class="newStyle4">
    <form id="form1" runat="server">
        <h1>
            <asp:Label ID="Label1" runat="server" Text="Basic Calculator"></asp:Label>
        </h1>
        <p>
            <asp:Label ID="txtUserName" runat="server" Text="User Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="16px" style="margin-left: 27px; margin-bottom: 4px" Width="207px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="txtPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" style="margin-left: 32px" Width="208px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnSave" runat="server" style="margin-left: 80px" Text="Login" Width="101px" OnClick="btnSave_Click" />
        </p>
        <p>
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
