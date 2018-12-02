<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="NuevaOferta.aspx.cs" Inherits="misOfertas.AgenteRetail.NuevaOferta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="m-5" align="right">       
     <asp:Label ID="lblUsuario" runat="server" Text="" > </asp:Label>
    </div>
  
     <div class="container">
      <div class="card card-login mx-auto mt-5">
           <div class="alert alert-success alert-dismissable" id="alertInsert" style="display:none"  >
              <button type="button" class="close" data-dismiss="alert">&times;</button>
              <strong>¡Exito!</strong> Oferta registrada!!!.
              </div>
        <div class="card-header" >FORMULARIO DE REGISTRO DE OFERTAS</div>
        <div class="card-body">
        <div class="form-group">
        <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="Campaña: *"></asp:Label>
        <asp:DropDownList ID="ddlCampana" runat="server" DataSourceID="EntityDataSource1" DataTextField="NOMBRE_CAMPANA" DataValueField="ID_CAMPANA">
        </asp:DropDownList>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Entities" DefaultContainerName="Entities" EnableFlattening="False" EntitySetName="CAMPANA" Select="it.[ID_CAMPANA], it.[NOMBRE_CAMPANA]">
        </asp:EntityDataSource>
        </div>
        </div>
        <div class="form-group">
        <div class="form-group">

        <asp:Label ID="Label4" runat="server" Text="Producto: *"></asp:Label>
        <asp:DropDownList ID="ddlProducto" runat="server" DataSourceID="EntityDataSource2" DataTextField="NOMBRE_PRODUCTO" DataValueField="ID_PRODUCTO">
        </asp:DropDownList>
        <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=Entities" DefaultContainerName="Entities" EnableFlattening="False" EntitySetName="PRODUCTO" Select="it.[NOMBRE_PRODUCTO], it.[ID_PRODUCTO]">
        </asp:EntityDataSource>
        </div>
        </div>
        <div class="form-group">
        <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="Cantidad Mínima: *"></asp:Label>
        <asp:TextBox ID="txtCantidadMinima" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        </div>
        <div class="form-group">
        <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="Cantidad Máxima: *"></asp:Label>
        <asp:TextBox ID="txtCantidadMaxima" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        </div>
        <div class="form-group">
        <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="Precio Normal: *"></asp:Label>
        <asp:TextBox ID="txtPrecioNormal" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        </div>
         <div class="form-group">
        <div class="form-group">
        <asp:Label ID="Label8" runat="server" Text="Precio Oferta: *"></asp:Label>
        <asp:TextBox ID="txtPrecioOferta" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        </div>
        <div class="form-group">
        <div class="form-group">
        <asp:Label ID="Label9" runat="server" Text="Imagen: *"></asp:Label>
        <asp:FileUpload ID="fuImagen" runat="server" />
         </div>
        </div>
            <div class="form-group">
       <asp:Button ID="btnEnviar" runat="server" OnClick="btnEnviar_Click" Text="Enviar"  CssClass="btn btn-primary form-control"/>
                 </div>
       </div>
      </div>
    </div>

</asp:Content>
