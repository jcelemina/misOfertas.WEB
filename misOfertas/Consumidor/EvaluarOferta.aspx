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
    <div class="col-form-label">
                <br/>
                
            </div>

<div class="row">
    <div class="col-sm-3">
    </div>    
    <div class="col-sm-6">



       
<div class="alert alert-success" id="alertInsert" style="display:none"  >
<button type="button" class="close" data-dismiss="alert">&times;</button>
<strong>¡Exito!</strong>, Oferta Evaluada!!!.
</div>
<div class="card-header"></div>
<div class="card-header" align="center"><h1>EVALUACIÓN OFERTA</h1></div>
            <div class="col-form-label">
                <br/>
                <br/>
            </div>
<div class="card-body">
        <div class="form-group row">
           <asp:Label ID="lblCalidad" runat="server"  class="col-sm-2 col-form-label">CALIDAD </asp:Label>
           <div class="col-sm-10"> 
           <asp:DropDownList ID="ddlCalidad" runat="server" Width="250" CssClass="form-control">
             <asp:ListItem>SELECCIONE*</asp:ListItem>
             <asp:ListItem Value="0">BAJA</asp:ListItem>
             <asp:ListItem Value="1">MEDIO</asp:ListItem>
             <asp:ListItem Value="2">ALTA</asp:ListItem>
            </asp:DropDownList>
         </div>
         </div>
        <div class="form-group row">
           <asp:Label ID="lblPrecio" runat="server" class="col-sm-2 col-form-label">PRECIO </asp:Label>
           <div class="col-sm-10">
           <asp:DropDownList ID="ddlPrecio" runat="server" Width="250" CssClass="form-control">
             <asp:ListItem>SELECCIONE*</asp:ListItem>
             <asp:ListItem Value="0">BAJA</asp:ListItem>
             <asp:ListItem Value="1">MEDIO</asp:ListItem>
             <asp:ListItem Value="2">ALTA</asp:ListItem>
           </asp:DropDownList>
         </div>
         </div>
         <div class="form-group row">
           <asp:Label ID="Label1" runat="server" class="col-sm-2 col-form-label">ATENCIÓN </asp:Label>
           <div class="col-sm-10">
           <asp:DropDownList ID="ddlAtencion" runat="server" Width="250" CssClass="form-control">
             <asp:ListItem>SELECCIONE*</asp:ListItem>
             <asp:ListItem Value="0">BAJA</asp:ListItem>
             <asp:ListItem Value="1">MEDIO</asp:ListItem>
             <asp:ListItem Value="2">ALTA</asp:ListItem>
           </asp:DropDownList>
         </div>
         </div>
     <div class="form-group">
     <div class="form-group">
        <asp:Label ID="Label5"   runat="server" Text="BOLETA"><asp:FileUpload ID="fuImagen" runat="server"  Width="350" CssClass="form-control"/></asp:Label>
    </div>
    </div>
     <div class="form-group">
    <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="COMENTARIO" ></asp:Label>&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtComentario" runat="server" TextMode="MultiLine" Width="350" CssClass="form-control"></asp:TextBox>
    </div>
    </div>
    <div class="form-gruop" >
         <div class="col-xs-6 col-sm-4">
            <asp:Button ID="btnEvaluar" runat="server" OnClick="btnEvaluar_Click" Text="Enviar" CssClass="btn btn-primary form-control"/>
     </div>
      
     </div>
            <div class="alert alert-warning" id="alertExist" style="display:none"  >
              <button type="button" class="close" data-dismiss="alert">&times;</button>
              <strong>¡Error!</strong>, No fue posible Evaluar Oferta!!!.
            </div> 

      
     </div>
</div>

<div class="col-md-3">

       </div>
    </div>
</asp:Content>
