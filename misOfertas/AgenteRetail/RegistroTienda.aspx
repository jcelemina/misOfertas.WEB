<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="RegistroTienda.aspx.cs" Inherits="misOfertas.AgenteRetail.RegistroTienda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../scripts/JavaScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="m-5" align="right">       
     <asp:Label ID="lblMensaje" runat="server" Text="" > </asp:Label>
    </div>
<div class="container">
            
      <div class="card card-login mx-auto mt-5">
       <div class="alert alert-success" id="alertInsert" style="display:none"  >
       <button type="button" class="close" data-dismiss="alert">&times;</button>
       <strong>¡Exito!</strong>, tienda registrada!!!.
        </div>
        <div class="card-header">REGISTRO TIENDA</div>
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
              <asp:Button ID="Button1" runat="server" Text="REGISTRAR TIENDA" OnClick="Button1_Click"  CssClass="btn btn-primary form-control"/>
              
            <br />
               <div class="alert alert-warning" id="alertExist" style="display:none"  >
              <button type="button" class="close" data-dismiss="alert">&times;</button>
              <strong>¡Error!</strong>, No fue posible el registro, Empresa existe!!!.
              </div> 
        <%--  </form>--%>
        </div>
      </div>
    </div>

</asp:Content>
