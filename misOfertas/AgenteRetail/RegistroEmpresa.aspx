<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="RegistroEmpresa.aspx.cs" Inherits="misOfertas.AgenteRetail.RegistroEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Registro Empresa</div>
        <div class="card-body">
          <form id="form2" runat="server" >
            <div class="form-group">
            <div class="form-group">
            <asp:TextBox   ID="TxtRut" runat="server" CssClass="form-control"  placeholder="RUT"></asp:TextBox>
            </div>
            <asp:TextBox ID="txtNombreEmpresa" runat="server" CssClass="form-control" placeholder="NOMBRE EMPRESA" ></asp:TextBox>                
            </div>
            <div class="form-group">
            <asp:TextBox   ID="TxtRazonSocial" runat="server" CssClass="form-control"  placeholder="RAZÓN SOCIAL"></asp:TextBox>
            </div>
             <asp:Button ID="Button1" runat="server" Text="Registrar"  CssClass="btn btn-primary form-control" OnClick="Button1_Click"/>
              <br />
              <asp:Label ID="lblMensaje" runat="server" Text=""> </asp:Label>
          </form>
          
        </div>
      </div>
    </div>
</asp:Content>
