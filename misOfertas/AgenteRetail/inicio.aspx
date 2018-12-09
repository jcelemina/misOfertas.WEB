<%@ Page Title="" Language="C#" MasterPageFile="~/AgenteRetail/AgenteRetail.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="misOfertas.AgenteRetail.inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .btn-info {
            width: 108px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

      <asp:Label ID="lblusuario" runat="server" Text="">usuario</asp:Label>  
   

<section class="content">
    <div class="row">
        <div class="col-md-6" align="center">
 <!-- general form elements -->
              <div class="box box-primary">
                <div class="box-header">
                  <h3 class="box-title">CAMPAÑAS ACTIVAS</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
              <asp:GridView ID="gvCampanaActiva" CssClass="table" runat="server" CellPadding="4" ForeColor="#333333" AutoGenerateColumns="False" GridLines="None">
                  <AlternatingRowStyle BackColor="White" />
                  <Columns>
                      <asp:TemplateField AccessibleHeaderText="CAMPAÑA" HeaderText="CAMPAÑA">
                          <EditItemTemplate>
                              <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nombre_campana") %>'></asp:TextBox>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="Label1" runat="server" Text='<%# Bind("nombre_campana") %>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField AccessibleHeaderText="FECHA INICIO" HeaderText="FECHA INICIO">
                          <EditItemTemplate>
                              <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("fecha_inicio") %>'></asp:TextBox>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("fecha_inicio") %>' Width="100"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField AccessibleHeaderText="FECHA FIN" HeaderText="FECHA FIN">
                          <EditItemTemplate>
                              <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("fecha_fin") %>'></asp:TextBox>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="Label4" runat="server" Text='<%# Bind("fecha_fin") %>' Width="100"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField AccessibleHeaderText="TIENDA" HeaderText="TIENDA">
                          <EditItemTemplate>
                              <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("nombre_tienda") %>'></asp:TextBox>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="Label5" runat="server" Text='<%# Bind("nombre_tienda") %>' Width="100"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                  </Columns>
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

        <div class="col-md-6" align="center">
              <!-- general form elements -->
              <div class="box box-primary">
                <div class="box-header">
                  <h3 class="box-title">CAMPAÑAS PENDIENTES</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
            <asp:GridView  CssClass="table" ID="gvCampanaPendiente" AutoGenerateColumns="False" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField AccessibleHeaderText="CAMPAÑA" HeaderText="CAMPAÑA">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nombre_campana") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("nombre_campana") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField AccessibleHeaderText="FECHA INICIO" HeaderText="FECHA INICIO">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("fecha_inicio") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("fecha_inicio") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField AccessibleHeaderText="FECHA FIN" HeaderText="FECHA FIN">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("fecha_fin") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("fecha_fin") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField AccessibleHeaderText="TIENDA" HeaderText="TIENDA">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("nombre_tienda") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("nombre_tienda") %>'></asp:Label>
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
    </div>
</section>


 <section class="content">
 <div class="row">
<div class="col-md-6" align="center">

<div class="box box-success">
                <div class="box-header">
                  <h3 class="box-title">TIENDAS ACTIVAS</h3>
                </div>
                <div class="box-body">
                 
    <asp:GridView ID="gvTiendaActiva" CssClass="table" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
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
</div>
 <div class="col-md-6" align="center">
              <!-- general form elements -->
              <div class="box box-primary">
                <div class="box-header">
                  <h3 class="box-title">TIENDAS PENDIENTES</h3>
                    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#NuevaTiendaModal" data-whatever="@mdo">NUEVA TIENDA</button>
                </div>



              

  <asp:GridView ID="gvTienda" CssClass="table" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="false" AutoGenerateDeleteButton="false" AutoGenerateSelectButton="false" CellPadding="4" ForeColor="#333333" GridLines="None">
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


</div>


     <div class="modal fade" id="NuevaTiendaModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">FORMULARIO CREAR TIENDA</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <div class="container-fluid">
       

      <div class="card card-login mx-auto mt-5">
       <div class="alert alert-success" id="alertInsert" style="display:none"  >
       <button type="button" class="close" data-dismiss="alert">&times;</button>
       <strong>¡Exito!</strong>, tienda registrada!!!.
        </div>
        <div class="card-body">
      <%--    <form id="form2" runat="server" >--%>
            <div class="form-group">
            <div class="form-group">
            <asp:TextBox   ID="txtNombreTienda" runat="server" CssClass="form-control"  placeholder="NOMBRE TIENDA"></asp:TextBox>
            </div>
            <asp:TextBox ID="TxtDireccion" runat="server" CssClass="form-control" placeholder="DIRECCIÓN" ></asp:TextBox>                
            </div>
            <div class="form-group">
            <div class="form-group">
               Empresa <asp:DropDownList ID="ddlEmpresa"  CssClass="form-control" runat="server" DataSourceID="SqlDataSource" DataTextField="NOMBRE_EMPRESA" DataValueField="RUT" ></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;RUT&quot;, &quot;NOMBRE_EMPRESA&quot; FROM &quot;EMPRESA&quot;"></asp:SqlDataSource>
            </div>
                <a class="d-block small" href="RegistroEmpresa.aspx">No encuentras tu empresa?</a>
                </div>
             <%-- <asp:Button ID="Button1" runat="server" Text="REGISTRAR TIENDA" OnClick="Button1_Click"  CssClass="btn btn-primary form-control"/>--%>
              
            <br />
               <div class="alert alert-danger" id="alertExist" style="display:none"  >
              <button type="button" class="close" data-dismiss="alert">&times;</button>
              <strong>¡Error!</strong>, No fue posible el registro, Tienda existe!!!.
              </div> 
        </div>
      </div>


      </div>
          </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">CERRAR</button>
        <asp:Button ID="btnCrearTienda" runat="server" Text="REGISTRAR" Width="86px"  OnClick="btnCrearTienda_Click1" CssClass="btn btn-primary"/>
      </div>
    </div>
  </div>
</div>
</section>
</asp:Content>

