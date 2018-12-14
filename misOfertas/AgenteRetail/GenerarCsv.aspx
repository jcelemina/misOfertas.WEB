<%@ Page Title="" Language="C#" MasterPageFile="~/AgenteRetail/AgenteRetail.Master" AutoEventWireup="true" CodeBehind="GenerarCsv.aspx.cs" Inherits="misOfertas.AgenteRetail.GenerarCsv" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <asp:Button ID="Button1" runat="server" Text="Exportar a csv" OnClick="Button1_Click" CssClass="btn btn-primary" />
     <div class="col-form-label">
                <br/>
                
            </div>

            <asp:GridView ID="GvCSV" runat="server" AllowPaging="True" CssClass="table" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" DataSourceID="SqlDataSource1"  >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="calidad" HeaderText="Calidad" SortExpression="calidad" />
                <asp:BoundField DataField="atencion" HeaderText="Atención" SortExpression="atencion"></asp:BoundField>
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="precio"></asp:BoundField>
                <asp:BoundField DataField="Nombre_CAMPANA" HeaderText="Campaña" SortExpression="NOMBRE_CAMPANA" />
                <asp:BoundField DataField="FECHA_INICIO" HeaderText="Fecha Inicio" SortExpression="FECHA_INICIO" />
                <asp:BoundField DataField="FECHA_FIN" HeaderText="Fecha fin" SortExpression="fecha_fin" />
                <asp:BoundField DataField="PRECIO_NORMAL" HeaderText="Precio Normal" SortExpression="PRECIO_NORMAL" />
                <asp:BoundField DataField="PRECIO_OFERTA" HeaderText="Precio Oferta" SortExpression="PRECIO_OFERTA" />
                <asp:BoundField DataField="NOMBRE_PRODUCTO" HeaderText="Producto" SortExpression="Nombre_producto" />
                <asp:BoundField DataField="MArca" HeaderText="Marca" SortExpression="marca" />
                <asp:BoundField DataField="Nombre_rubro" HeaderText="Rubro" SortExpression="Nombre_RUBRO" />
                <asp:BoundField DataField="Nombres_usuario" HeaderText="Nombre usuario" SortExpression="NOMBRES_USUARIO" />
                <asp:BoundField DataField="Apellido_Paterno" HeaderText="Apellido" SortExpression="apellido_paterno" />
                <asp:BoundField DataField="correo" HeaderText="Correo" SortExpression="correo" />
                <asp:BoundField DataField="rut" HeaderText="Rut" SortExpression="rut" />
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
    <div>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select 
  val.calidad, val.atencion, val.precio, camp.nombre_campana, camp.fecha_inicio, camp.fecha_fin,ofer.PRECIO_NORMAL,ofer.PRECIO_OFERTA,
  prod.nombre_producto, prod.marca,rub.nombre_rubro, us.nombres_usuario, us.apellido_paterno, us.correo, us.rut
from valoracion val join oferta ofer on val.oferta_fk = ofer.id_oferta
join campana camp on ofer.campana_fk = camp.id_campana
join producto prod on ofer.producto_fk = prod.id_producto
join rubro rub on prod.rubro_fk = rub.id_rubro
join usuario us on us.id_usuario = val.usuario_fk"></asp:SqlDataSource>
    
    </div>
</asp:Content>
