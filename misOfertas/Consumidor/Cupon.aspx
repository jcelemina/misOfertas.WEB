<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cupon.aspx.cs" Inherits="misOfertas.Consumidor.Cupon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoMenuContextual" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContenidoPrincipal" runat="server">
            <div class="m-5" align="right">       
         <asp:Label ID="lblUsuario" runat="server" Text="" > </asp:Label>
    </div>
    <asp:Panel ID="Panel1" runat="server"  HorizontalAlign="Center">
<div  class="container">
<div class="card card-login mx-auto mt-5" id="panel2">
<div class="card-header">CUPÓN DE DESCUENTO</div>
<div class="card-body">

                 
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="NOMBRE :"></asp:Label>
            <asp:Label ID="lblNombre" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="RUT :"></asp:Label>
            <asp:Label ID="lblRut" runat="server" Text=""></asp:Label>
        </div>
        <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="RUBRO :"></asp:Label>
        <asp:Label ID="lblRubro" runat="server" Text="Label"></asp:Label>
        <asp:DropDownList ID="ddlProducto" runat="server" DataSourceID="EntityDataSource2" DataTextField="NOMBRE_RUBRO" DataValueField="ID_RUBRO">
        </asp:DropDownList>
        <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=Entities" DefaultContainerName="Entities" EnableFlattening="False" EntitySetName="RUBRO" EntityTypeFilter="RUBRO" Select="it.[ID_RUBRO], it.[NOMBRE_RUBRO]">
        </asp:EntityDataSource>
        </div>
        <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="PUNTOS :"></asp:Label>
        <asp:Label ID="lblPuntos" runat="server" Text="Label"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="EntityDataSource1" DataTextField="MAXIMO" DataValueField="ID_TRAMO" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Entities" DefaultContainerName="Entities" EnableFlattening="False" EntitySetName="TRAMO" EntityTypeFilter="TRAMO" Select="it.[ID_TRAMO], it.[MAXIMO]">
        </asp:EntityDataSource>
        </div>
        <div class="form-group">
        <asp:Label ID="etiquetaDescuento" runat="server" Text="DESCUENTO:"></asp:Label>
        <asp:Label ID="lblDescuento" runat="server" Text="Label"></asp:Label>
        </div>  
        <div class="form-group">
        <asp:Label ID="etiquetaFecha" runat="server" Text="FECHA VENCIMIENTO"></asp:Label>
        <asp:Label ID="lblVencimiento" runat="server" Text="Label"></asp:Label>
        </div> 
        <div class="form-group">
            <asp:Button ID="btnCupon" runat="server" OnClick="Button1_Click" Text="Cupón" Width="86px"  CssClass="btn btn-primary"/>
            
            
        </div>     
         <div class="form-group">
               <asp:Label ID="etiquetaCondiciones" runat="server" Text="Cupón válido hasta la fecha indicada según el rubro selecionado, con tope monetario de"></asp:Label>
                <asp:Label ID="lblTope" runat="server" Text="lblTope"></asp:Label>
         </div>
              




 </div>
 </div>
 </div>
    </asp:Panel>
</asp:Content>
