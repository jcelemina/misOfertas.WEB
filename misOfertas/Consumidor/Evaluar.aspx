<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Evaluar.aspx.cs" Inherits="misOfertas.Consumidor.Evaluar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPrincipal" runat="server">
    <div class="m-12" align="right">       
<asp:Label ID="lblMensaje" runat="server" Text="" > </asp:Label>
</div>
<div class="container">
<div class="card card-login mx-auto mt-2">
    <div class="alert alert-success" id="alertInsert" style="display:none"  >
       <button type="button" class="close" data-dismiss="alert">&times;</button>
       <strong>¡Exito!</strong>, tienda registrada!!!.
     </div>
<div class="card-header">EVALUACIÓN OFERTA</div>
<div class="card-body">
     <div class="form-group">
     <div class="form-group">
     <asp:TextBox ID="txtCalidad" runat="server" TextMode="Number" CssClass="form-control" placeholder="CALIDAD"></asp:TextBox>
     </div>
     </div>
     <div class="form-group">
     <div class="form-group">
       <asp:TextBox ID="txtPrecio" runat="server" TextMode="Number" CssClass="form-control" placeholder="PRECIO"></asp:TextBox>
     </div>
     </div>
     <div class="form-group">
     <div class="form-group">
     <asp:TextBox ID="txtAtencion" runat="server" TextMode="Number" CssClass="form-control" placeholder="ATENCIÓN"></asp:TextBox>
     </div>
     </div>
     <div class="form-group">
     <div class="form-group">
        <asp:Label ID="Label5"   runat="server" Text="Boleta"><asp:FileUpload ID="fuImagen" runat="server" CssClass="form-control"/></asp:Label>
    </div>
    </div>
    <div class="form-group">
    <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="Comentario" ></asp:Label>&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtComentario" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
    </div>
    </div>
    <div class="form-group">
            <asp:Button ID="btnEvaluar" runat="server" OnClick="btnEvaluar_Click" Text="Enviar" CssClass="btn btn-primary form-control" />
     </div>
            <div class="alert alert-warning" id="alertExist" style="display:none"  >
              <button type="button" class="close" data-dismiss="alert">&times;</button>
              <strong>¡Error!</strong>, No fue posible el registro, Empresa existe!!!.
            </div> 
       
        
  </div>
 </div>
   </div>


</asp:Content>
