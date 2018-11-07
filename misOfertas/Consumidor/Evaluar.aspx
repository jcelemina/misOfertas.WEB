<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Evaluar.aspx.cs" Inherits="misOfertas.Consumidor.Evaluar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Calidad"></asp:Label>
&nbsp;<asp:TextBox ID="txtCalidad" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Precio"></asp:Label>
&nbsp;<asp:TextBox ID="txtPrecio" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Atención"></asp:Label>
&nbsp;<asp:TextBox ID="txtAtencion" runat="server" TextMode="Number"></asp:TextBox>
&nbsp;<br />
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        &nbsp;<textarea id="TextArea1" cols="20" name="S1" rows="2"></textarea><br />
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
    </form>
</asp:Content>
