<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ExitoEvaluar.aspx.cs" Inherits="misOfertas.Consumidor.ExitoEvaluar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <div style="margin-left: 200px">
        <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Yes_Check_Circle.svg/1024px-Yes_Check_Circle.svg.png" Width="150px" />
    </div>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="Ofertas.aspx"><asp:Label ID="Label1" runat="server" Text="Evaluación registrada con éxito, Click acá para ir al inicio"></asp:Label></a>
</form>

</asp:Content>
