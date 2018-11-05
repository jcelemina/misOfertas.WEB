<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroTienda.aspx.cs" Inherits="misOfertas.Agente_Retail.RegistroTienda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblRutEmpresa" runat="server" Text="Ingrese Rut Empresa"></asp:Label><asp:TextBox ID="txtRut" runat="server"></asp:TextBox><br/>
        <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
    </div>
        <asp:Button ID="btnConsulta" runat="server" Text="Button" OnClick="btnConsulta_Click" />
    </form>
</body>
</html>
