<%@ Page Title="" Language="C#" MasterPageFile="~/AgenteRetail/AgenteRetail.Master" AutoEventWireup="true" CodeBehind="Empresa.aspx.cs" Inherits="misOfertas.AgenteRetail.Empresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <section class="content">
    <div class="row">
    <div class="col-md-8">
    
      <div class="card card-login mx-auto mt-5">
           <div class="alert alert-success alert-dismissable" id="alertInsert" style="display:none"  >
              <button type="button" class="close" data-dismiss="alert">&times;</button>
              <strong>¡Exito!</strong> Empresa registrada!!!.
              </div>
        <div class="card-header" align="center"><h1>REGISTRO EMPRESA</h1></div>
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
         </div>
       
       <div class="col-md-4">

       </div>
        <%--</div>--%>
    </section>
</asp:Content>
