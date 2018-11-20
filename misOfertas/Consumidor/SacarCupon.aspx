<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SacarCupon.aspx.cs" Inherits="misOfertas.Consumidor.SacarCupon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Image ID="Image1" runat="server" ImageAlign="AbsMiddle" Height="119px" ImageUrl="~/css/Assets/logo MO.jpeg" Width="154px" />
        <asp:Table ID="Table1" runat="server" Height="76px" Width="238px">
        </asp:Table>
        <br />
            <asp:Panel ID="Panel2" runat="server" Height="125px" Width="241px">
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            Tope monetario&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </asp:Panel>
    </form>
</body>
</html>
