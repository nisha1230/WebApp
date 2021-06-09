<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApp.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        
            .newStyle4 {
            background-color: #FFCC99;
            text-align: center;
        }
        
        .newStyle6 {
            color: #C0C0C0;
        }
    </style>
</head>
<body class="newStyle4">
    <form id="form1" runat="server">
        
        
           
                            <h1>
                                <asp:Label ID="Label4" runat="server" Text="HomePage"></asp:Label>
                            </h1>
                        
                    
                        <h2>
                            <asp:Label ID="Label1" runat="server" CssClass="newStyle6" Text="Welcome "></asp:Label>
                        </h2>
                  
                        <p>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                            </p>
                   
                        <p>
                            <asp:Label ID="Label5" runat="server" Text="Thank you"></asp:Label>
                        </p>
                
           
                        <p>
                            <asp:Button ID="ButtonLogout" runat="server" OnClick="Button1_Click" Text="Logout" />
                        </p>
               
    </form>
</body>
</html>
