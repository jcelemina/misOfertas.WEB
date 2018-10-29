<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="misOfertas.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Label ID="lblcorreo" runat="server" Text="USUARIO"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" placeholder="CORREO"></asp:TextBox>
        <br/>
        <asp:Label ID="lblPass" runat="server" Text="CONTRASEÑA"></asp:Label>
         <asp:TextBox ID="txtPassword" runat="server" placeholder="CONTRASEÑA"></asp:TextBox>
        <br/>
         <asp:label id="lblMensaje" runat="server" text=""></asp:label>
        <br/>
    </div>
        <asp:Button ID="Button1" runat="server" Text="INGRESAR" OnClick="Button1_Click" style="height: 26px" />
    </form>
</body>
</html>
