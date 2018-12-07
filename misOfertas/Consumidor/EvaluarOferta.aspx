<%@ Page Title="" Language="C#" MasterPageFile="~/Consumidor/Consumidor.Master" AutoEventWireup="true" CodeBehind="EvaluarOferta.aspx.cs" Inherits="misOfertas.Consumidor.EvaluarOferta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .mt-2 {
        width: 686px;
        margin-left: 0px;
        margin-right: 138px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

      <div class="m-12" align="right">       

</div>

    <div class="alert alert-success" id="alertInsert" style="display:none"  >
       <button type="button" class="close" data-dismiss="alert">&times;</button>
       <strong>¡Exito!</strong>, tienda registrada!!!.
     </div>
<div class="card-header">EVALUACIÓN OFERTA</div>
<div class="card-body" width="50">
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



</asp:Content>
