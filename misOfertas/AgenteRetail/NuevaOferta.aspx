<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="NuevaOferta.aspx.cs" Inherits="misOfertas.AgenteRetail.NuevaOferta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Formulario de registro de nueva Oferta"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Campaña: *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlCampana" runat="server" DataSourceID="EntityDataSource1" DataTextField="NOMBRE_CAMPANA" DataValueField="ID_CAMPANA">
        </asp:DropDownList>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Entities" DefaultContainerName="Entities" EnableFlattening="False" EntitySetName="CAMPANA" Select="it.[ID_CAMPANA], it.[NOMBRE_CAMPANA]">
        </asp:EntityDataSource>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Producto: *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlProducto" runat="server" DataSourceID="EntityDataSource2" DataTextField="NOMBRE_PRODUCTO" DataValueField="ID_PRODUCTO">
        </asp:DropDownList>
        <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=Entities" DefaultContainerName="Entities" EnableFlattening="False" EntitySetName="PRODUCTO" Select="it.[NOMBRE_PRODUCTO], it.[ID_PRODUCTO]">
        </asp:EntityDataSource>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Cantidad Mínima: *"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCantidadMinima" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Cantidad Máxima: *"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCantidadMaxima" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Precio Normal: *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPrecioNormal" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Precio Oferta: *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPrecioOferta" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Imagen: *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="fuImagen" runat="server" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnEnviar" runat="server" OnClick="btnEnviar_Click" Text="Enviar" />
        <br />
        <br />
    </form>
</asp:Content>
