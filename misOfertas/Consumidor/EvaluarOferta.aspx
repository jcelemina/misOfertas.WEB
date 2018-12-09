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


<div class="col-sm-10">       
<div class="alert alert-success" id="alertInsert" style="display:none"  >
<button type="button" class="close" data-dismiss="alert">&times;</button>
<strong>¡Exito!</strong>, Oferta Evaluada!!!.
</div>
<div class="card-header"></div>
<div class="card-body">
    
        <!-- de aqui-->
        <div class="form-group row">
           <asp:Label ID="lblCalidad" runat="server" class="col-sm-2 col-form-label">CALIDAD :</asp:Label>
           <div class="col-sm-10">
           <asp:DropDownList ID="ddlCalidad" runat="server" CssClass="form-control">
             <asp:ListItem>SELECCIONE*</asp:ListItem>
             <asp:ListItem Value="0">BAJA</asp:ListItem>
             <asp:ListItem Value="1">MEDIO</asp:ListItem>
             <asp:ListItem Value="2">ALTA</asp:ListItem>
            </asp:DropDownList>
         </div>
         </div>
        <div class="form-group row">
           <asp:Label ID="lblPrecio" runat="server" class="col-sm-2 col-form-label">PRECIO :</asp:Label>
           <div class="col-sm-10">
           <asp:DropDownList ID="ddlPrecio" runat="server" CssClass="form-control">
             <asp:ListItem>SELECCIONE*</asp:ListItem>
             <asp:ListItem Value="0">BAJA</asp:ListItem>
             <asp:ListItem Value="1">MEDIO</asp:ListItem>
             <asp:ListItem Value="2">ALTA</asp:ListItem>
           </asp:DropDownList>
         </div>
         </div>
         <div class="form-group row">
           <asp:Label ID="Label1" runat="server" class="col-sm-2 col-form-label">ATENCIÓN :</asp:Label>
           <div class="col-sm-10">
           <asp:DropDownList ID="ddlAtencion" runat="server" CssClass="form-control">
             <asp:ListItem>SELECCIONE*</asp:ListItem>
             <asp:ListItem Value="0">BAJA</asp:ListItem>
             <asp:ListItem Value="1">MEDIO</asp:ListItem>
             <asp:ListItem Value="2">ALTA</asp:ListItem>
           </asp:DropDownList>
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
    <div class="form-gruop">
         <div class="col-xs-6 col-sm-4">
            <asp:Button ID="btnEvaluar" runat="server" OnClick="btnEvaluar_Click" Text="Enviar" CssClass="btn btn-primary form-control"/>
     </div>
         <asp:Button ID="btnPrueba" runat="server" Text="Button" OnClick="btnPrueba_Click" />
     </div>
            <div class="alert alert-warning" id="alertExist" style="display:none"  >
              <button type="button" class="close" data-dismiss="alert">&times;</button>
              <strong>¡Error!</strong>, No fue posible Evaluar Oferta!!!.
            </div> 

      
     </div>
</div>
 

</asp:Content>
