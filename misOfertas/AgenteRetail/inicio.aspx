<%@ Page Title="" Language="C#" MasterPageFile="~/AgenteRetail/AgenteRetail.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="misOfertas.AgenteRetail.inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

      <asp:Label ID="lblusuario" runat="server" Text="">usuario</asp:Label>  
   

<section class="content">
    <div class="row">
        <div class="col-md-6">
 <!-- general form elements -->
              <div class="box box-primary">
                <div class="box-header">
                  <h3 class="box-title">CAMPAÑAS ACTIVAS</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
              <asp:GridView ID="gvCampanaActiva" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                  <AlternatingRowStyle BackColor="White" />
                  <EditRowStyle BackColor="#2461BF" />
                  <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#EFF3FB" />
                  <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                  <SortedAscendingCellStyle BackColor="#F5F7FB" />
                  <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                  <SortedDescendingCellStyle BackColor="#E9EBEF" />
                  <SortedDescendingHeaderStyle BackColor="#4870BE" />
                  </asp:GridView>

</div>
            
</div>

        <div class="col-md-6">
            <asp:GridView ID="gvCampanaPendiente" runat="server"></asp:GridView>
        </div>
    </div>
</section>


 <section class="content">
 <div class="row">
 <div class="col-md-6" align="center">
              <!-- general form elements -->
              <div class="box box-primary">
                <div class="box-header">
                  <h3 class="box-title">TIENDAS PENDIENTES</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
              

  <asp:GridView ID="gvTienda" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:TemplateField AccessibleHeaderText="TIENDA" HeaderText="TIENDA">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nombre_tienda") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("nombre_tienda") %>' Width="100"></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField AccessibleHeaderText="DIRECCIÓN" HeaderText="DIRECCIÓN">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("direccion") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label2" runat="server" Text='<%# Bind("direccion") %>' Width="100"></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField AccessibleHeaderText="EMPRESA" HeaderText="EMPRESA">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("nombre_empresa") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label3" runat="server" Text='<%# Bind("nombre_empresa") %>' Width="100"></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField FooterText="RUT EMPRESA" HeaderText="RUT EMPRESA">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("rut_empresa") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label4" runat="server" Text='<%# Bind("rut_empresa") %>' Width="100"></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
         </Columns>
         <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
         <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
         <SortedAscendingCellStyle BackColor="#FDF5AC" />
         <SortedAscendingHeaderStyle BackColor="#4D0000" />
         <SortedDescendingCellStyle BackColor="#FCF6C0" />
         <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>

</div>
</div>

<div class="col-md-6" align="center">

<div class="box box-success">
                <div class="box-header">
                  <h3 class="box-title" align="center">TIENDAS ACTIVAS</h3>
                </div>
                <div class="box-body">
                 
    <asp:GridView ID="gvTiendaActiva" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
         <AlternatingRowStyle BackColor="White" />
        
         <Columns>
             <asp:TemplateField AccessibleHeaderText="TIENDA" HeaderText="TIENDA">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("nombre_tienda") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label2" runat="server" Text='<%# Bind("nombre_tienda") %>' Width="100"></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField AccessibleHeaderText="DIRECCIÓN" HeaderText="DIRECCIÓN">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("direccion") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label3" runat="server" Text='<%# Bind("direccion") %>' Width="100"></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField AccessibleHeaderText="EMPRESA" HeaderText="EMPRESA">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("nombre_empresa") %>' ></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label4" runat="server" Text='<%# Bind("nombre_empresa") %>' Width="100"></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField AccessibleHeaderText="RUT EMPRESA" HeaderText="RUT EMPRESA">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("rut_empresa") %>' ></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label5" runat="server" Text='<%# Bind("rut_empresa") %>' Width="100"></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
         </Columns>
        
         <EditRowStyle BackColor="#2461BF"/>
         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"/>
         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#EFF3FB" />
         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#F5F7FB" />
         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
         <SortedDescendingCellStyle BackColor="#E9EBEF" />
         <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

</div>

</div>
</div><!-- /.box-body -->
</div>
    </section>


    





    






    
</asp:Content>

