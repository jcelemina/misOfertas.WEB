<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ErrorEvaluar.aspx.cs" Inherits="misOfertas.Consumidor.ErrorEvaluar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="https://vignette.wikia.nocookie.net/watchdogscombined/images/b/b8/Error.jpg/revision/latest?cb=20140816012712" Width="150px" />
        <br />
        <br />
        <a href ="Evaluar.aspx"><asp:Label ID="Label1" runat="server" Text="Error al registrar evaluación, click aquí para reintentar."></asp:Label></a>
    </form>
</asp:Content>
