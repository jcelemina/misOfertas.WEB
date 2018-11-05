<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="misOfertas.Consumidor.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="content-wrapper">

        <div class="container-fluid">

          <!-- label para mostrar el nombre de la variable ssesion-->
            <asp:Label ID="lblMensaje" runat="server" Text="Label"></asp:Label>
             <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
            <li class="breadcrumb-item active">Overview</li>
          </ol>

         

  <!-- aquiiiii va lo que deseo que valla en la pagina -->







        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright © Your Website 2018</span>
            </div>
          </div>
        </footer>

      </div>
</asp:Content>
