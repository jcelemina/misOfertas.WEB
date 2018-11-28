<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="RegistroEmpresa.aspx.cs" Inherits="misOfertas.AgenteRetail.RegistroEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../scripts/JavaScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="m-5" align="right">       
     <asp:Label ID="lblUsuario" runat="server" Text="" > </asp:Label>
    </div>
     <div class="container">
      <div class="card card-login mx-auto mt-5">
           <div class="alert alert-success alert-dismissable" id="alertInsert" style="display:none"  >
              <button type="button" class="close" data-dismiss="alert">&times;</button>
              <strong>¡Exito!</strong> Empresa registrada!!!.
              </div>
        <div class="card-header">REGISTRO EMPRESA</div>
        <div class="card-body">
         <%-- <form id="form2" runat="server" >--%>
            <div class="form-group">
            <asp:TextBox   ID="txtRutEmpresa" runat="server" CssClass="form-control"  placeholder="RUT EMPRESA"></asp:TextBox>
            </div>
            <div class="form-group">
            <div class="form-group">
            <asp:TextBox   ID="txtNombreEmpresa" runat="server" CssClass="form-control"  placeholder="NOMBRE EMPRESA"></asp:TextBox>
            </div>
            <asp:TextBox ID="TxtRazonSocial" runat="server" CssClass="form-control" placeholder="RAZÓN SOCIAL" ></asp:TextBox>                
            </div>
               
              <asp:Button ID="Button1" runat="server" Text="REGISTRAR EMPRESA"  CssClass="btn btn-primary form-control" OnClick="Button1_Click1"/>
              <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
            <br />
              <div class="alert alert-warning alert-dismissable" id="alertExist" style="display:none"  >
              <strong>¡Error!</strong> No fue posible el registro, Empresa existe!!!.
              </div>
     
       <%--   </form>--%>
        </div>
      </div>
    </div>

 </asp:Content>
