<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ofertas.aspx.cs" Inherits="misOfertas.Consumidor.Ofertas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GvOfertas" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GvOfertas_SelectedIndexChanged" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ID_OFERTA" HeaderText="Oferta Nro" SortExpression="ID_OFERTA" />
                <asp:BoundField DataField="CANTIDAD_MINIMA" HeaderText="Compra Minima" SortExpression="CANTIDAD_MINIMA" />
                <asp:BoundField DataField="CANTIDAD_MAXIMA" HeaderText="Compra maxima" SortExpression="CANTIDAD_MAXIMA" />
                <asp:BoundField DataField="PRECIO_NORMAL" HeaderText="Precio Normal" SortExpression="PRECIO_NORMAL" />
                <asp:BoundField DataField="PRECIO_OFERTA" HeaderText="Precio Oferta" SortExpression="PRECIO_OFERTA" />
                <asp:TemplateField HeaderText="Imagen" SortExpression="IMAGEN">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IMAGEN") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="ImgOferta" runat="server" Height="100px" ImageUrl='<%# Eval("IMAGEN") %>' Width="150px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField SelectText="Evaluar" ShowSelectButton="True" />
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
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"  SelectMethod="listaOfertas" TypeName="misOfertas.BLL.Oferta"></asp:ObjectDataSource>
        <br />
        <br />
    </form>
</asp:Content>
