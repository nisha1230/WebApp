<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApp.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            background-color: #FF9933;
        }
    </style>
</head>
<body class="newStyle1">
    <form id="form1" runat="server">
        <centre>
        <div>
            
            <h1>
                <asp:Label ID="Label4" runat="server" Text="Basic Calculator"></asp:Label>
            </h1>
        </div>
        <h2>
            <asp:Label ID="Label1" runat="server" Text="Home Page"></asp:Label>
        </h2>
        <p>
            <asp:Label ID="Label2" runat="server" Text="operations"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="previous operation"></asp:Label>
        </p>
        </centre>
    </form>
</body>
</html>
