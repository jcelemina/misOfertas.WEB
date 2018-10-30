<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro_bkp.aspx.cs" Inherits="misOfertas.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Nombre
        <asp:TextBox ID="txtnombre" runat="server"></asp:TextBox>
        <br/>
        apellido paterno
        <asp:TextBox ID="txtpaterno" runat="server"></asp:TextBox>
        <br/>
        apellido materno
        <asp:TextBox ID="txtmaterno" runat="server"></asp:TextBox>
        <br/>
        rut
        <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
        <br/>
        correo
        <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
        <br/>
        contraseña
        <asp:TextBox ID="txtcontrasena" runat="server"></asp:TextBox>
    </div>
        <asp:label id="lblMensaje" runat="server" text=""></asp:label>
        <br/>
        <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
    </form>
</body>
</html>

