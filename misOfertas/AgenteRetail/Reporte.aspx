<%@ Page Title="" Language="C#" MasterPageFile="~/AgenteRetail/AgenteRetail.Master" AutoEventWireup="true" CodeBehind="Reporte.aspx.cs" Inherits="misOfertas.AgenteRetail.Reporte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<asp:GridView ID="GvValoraciones" runat="server" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="FECHA" HeaderText="Fecha" SortExpression="FECHA" />
        <asp:BoundField DataField="NOMBRE_CAMPANA" HeaderText="Campaña" SortExpression="NOMBRE_CAMPANA" />
        <asp:BoundField DataField="NOMBRE_PRODUCTO" HeaderText="Producto" SortExpression="NOMBRE_PRODUCTO" />
        <asp:BoundField DataField="CALIDAD" HeaderText="Calidad" SortExpression="CALIDAD" />
        <asp:BoundField DataField="ATENCION" HeaderText="Atencion" SortExpression="ATENCION" />
        <asp:BoundField DataField="PRECIO" HeaderText="Precio" SortExpression="PRECIO" />
        <asp:BoundField DataField="NOMBRES_USUARIO" HeaderText="Usuario" SortExpression="NOMBRES_USUARIO" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Exportar a Excel" OnClick="ExportToExcel" />
    <asp:SqlDataSource ID="DsValoraciones" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"  ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" CancelSelectOnNullParameter="False">
    </asp:SqlDataSource>
    <br />
</asp:Content>
