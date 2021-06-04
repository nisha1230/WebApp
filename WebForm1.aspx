<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Basic Calculator</title>
    <script src="jquery-3.6.0.js.js"></script>
<script> 
    $(document).ready(function () {
        $('#btnSave').click(function () {

            var UserName = $("#txtUserName").val();
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
     
       
        .newStyle5 {
            background-color: #CCFFFF;
            height: 383px;
            text-align: center;
        }
     
    </style>
</head>
<body class="newStyle5">
    <form id="form1" runat="server">
        <h1>
            <asp:Label ID="Label1" runat="server" CssClass="newStyle5" Text="Login Page"></asp:Label>
        </h1>
        <dl>
            <dt>
            </dt>
            <dt>
            </dt>
            <dt>
                <asp:Label runat="server" Text="User Name"></asp:Label>
                <asp:TextBox ID="txtUserName" runat="server" Height="16px" style="margin-left: 23px; margin-bottom: 4px" Width="207px"></asp:TextBox>
            </dt>
            <dt>
                <asp:Label runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" style="margin-left: 32px" TextMode="Password" Width="208px"></asp:TextBox>
            </dt>
        </dl>
        <p>
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" style="margin-left: 80px" Text="Login" Width="101px" />
        </p>
        <p>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
