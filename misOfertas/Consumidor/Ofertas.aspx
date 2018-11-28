<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ofertas.aspx.cs" Inherits="misOfertas.Consumidor.Ofertas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="m-5" align="right">       
     <asp:Label ID="lblUsuario" runat="server" Text="" > </asp:Label>
    </div>
    
   
   <div class="m-5" > 
     <form id="form1" runat="server" >
        <asp:GridView ID="GvOfertas"  runat="server"  AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GvOfertas_SelectedIndexChanged" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ID_OFERTA" HeaderText="Nro Oferta" SortExpression="ID_OFERTA" />
                <asp:BoundField DataField="NOMBRE_PRODUCTO" HeaderText="Producto" SortExpression="NOMBRE_PRODUCTO"></asp:BoundField>
                <asp:BoundField DataField="NOMBRE_CAMPANA" HeaderText="Campaña" SortExpression="NOMBRE_CAMPANA"></asp:BoundField>
                <asp:BoundField DataField="CANTIDAD_MINIMA" HeaderText="Cantidad Mínima" SortExpression="CANTIDAD_MINIMA" />
                <asp:BoundField DataField="CANTIDAD_MAXIMA" HeaderText="Cantidad Máxima" SortExpression="CANTIDAD_MAXIMA" />
                <asp:BoundField DataField="PRECIO_NORMAL" HeaderText="Precio Normal" SortExpression="PRECIO_NORMAL" />
                <asp:BoundField DataField="PRECIO_OFERTA" HeaderText="Precio Oferta" SortExpression="PRECIO_OFERTA" />
                <asp:TemplateField HeaderText="Imagen">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("IMAGEN") %>' Width="150px" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select ofer.ID_OFERTA,camp.nombre_campana, prod.nombre_producto,ofer.CANTIDAD_MINIMA,ofer.CANTIDAD_MAXIMA,ofer.PRECIO_NORMAL,ofer.PRECIO_OFERTA,'ftp://usuarioftp:Portafolio2018@18.222.173.173/' || ofer.IMAGEN &quot;IMAGEN&quot;
    from oferta ofer join campana camp on ofer.campana_fk = camp.id_campana
    join producto prod on ofer.producto_fk = prod.id_producto"></asp:SqlDataSource>
        <br />
        <br />
    </form>
       </div>
</asp:Content>
