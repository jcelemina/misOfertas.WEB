<%@ Page Title="" Language="C#" MasterPageFile="~/AgenteRetail/AgenteRetail.Master" AutoEventWireup="true" CodeBehind="NuevaOferta.aspx.cs" Inherits="misOfertas.AgenteRetail.NuevaOferta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server" >
  
  
     <div class="container">
      <div class="card card-login mx-auto mt-5">
           <div class="alert alert-success alert-dismissable" id="alertInsert" style="display:none"  >
              <button type="button" class="close" data-dismiss="alert">&times;</button>
              <strong>¡Exito!</strong> Oferta registrada!!!.
              </div>
        <div class="card-header"><h1>REGISTRO DE OFERTAS</h1></div>
        <div class="card-body">
        <div class="form-group row">
        <asp:Label ID="lblCampana" runat="server" CssClass="col-sm-2 col-form-label"  Text="Label">CAMPAÑA</asp:Label>
        <div class="col-sm-10">
        <asp:DropDownList ID="ddlCampana" runat="server" DataTextField="NOMBRE_CAMPANA" DataValueField="ID_CAMPANA" CssClass="form-control" Width="250">
        </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"></asp:SqlDataSource>
        </div>
        </div>
        <div class="form-group row">
               <asp:Label ID="lblProducto" runat="server" CssClass="col-sm-2 col-form-label"  Text="Label">PRODUCTO</asp:Label>
            <div class="col-sm-10">
        <asp:DropDownList ID="ddlProducto" runat="server" CssClass="form-control" DataSourceID="EntityDataSource2" DataTextField="NOMBRE_PRODUCTO" DataValueField="ID_PRODUCTO" Width="250">
        </asp:DropDownList>
        <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=Entities" DefaultContainerName="Entities" EnableFlattening="False" EntitySetName="PRODUCTO" Select="it.[NOMBRE_PRODUCTO], it.[ID_PRODUCTO]">
        </asp:EntityDataSource>
        </div>
        </div>
       <div class="form-group row">
               <asp:Label ID="lblRut" runat="server" CssClass="col-sm-2 col-form-label"  Text="Label">CANTIDAD MÍNIMA</asp:Label>
        <div class="col-sm-10">
        <asp:TextBox ID="txtCantidadMinima" runat="server" TextMode="Number" CssClass="form-control" Width="250"></asp:TextBox>
        </div>
        </div>
        <div class="form-group row">
         <asp:Label ID="lblCantidadMaxima" runat="server" CssClass="col-sm-2 col-form-label"  Text="Label">CANTIDAD MÁXIMA</asp:Label>
        <div class="col-sm-10">
        <asp:TextBox ID="txtCantidadMaxima" runat="server" TextMode="Number" CssClass="form-control" Width="250"></asp:TextBox>
        </div>
        </div>
        <div class="form-group row">
        <asp:Label ID="lblPrecio" runat="server" CssClass="col-sm-2 col-form-label"  Text="Label">PRECIO</asp:Label>
        <div class="col-sm-10">
        <asp:TextBox ID="txtPrecioNormal" runat="server" TextMode="Number" CssClass="form-control" Width="250"></asp:TextBox>
        </div>
        </div>
       <div class="form-group row">
       <asp:Label ID="lblPrecioOferta" runat="server" CssClass="col-sm-2 col-form-label"  Text="Label">PRECIO OFERTA</asp:Label>
       <div class="col-sm-10">
       <asp:TextBox ID="txtPrecioOferta" runat="server" TextMode="Number" CssClass="form-control" Width="250"></asp:TextBox>
        </div>
        </div>
        <div class="form-group row">
        <asp:Label ID="lblImagen" runat="server" CssClass="col-sm-2 col-form-label"  Text="Label">IMAGEN</asp:Label>
        <div class="col-sm-10">
        <asp:FileUpload ID="fuImagen" runat="server" CssClass="btn btn-success form-control" Width="250" />
        </div>
        </div>
        <div class="form-group" >
       <asp:Button ID="btnEnviar" runat="server" OnClick="btnEnviar_Click" Text="Enviar"  Width="200" CssClass="btn btn-primary"/>
       </div>
       </div>
      </div>
    </div>

</asp:Content>
