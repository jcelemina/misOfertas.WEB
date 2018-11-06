<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="misOffertas.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content-wrapper">

        <div class="container-fluid">

          <!-- label para mostrar el nombre de la variable de session-->
          <asp:Label ID="lblMensaje" runat="server" Text="Label"></asp:Label>
          <!-- Breadcrumbs-->
            <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="#">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">Overview</li>
          </ol>

          <!-- Icon Cards-->

           
        

         
            

        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright © Mis Ofertas 2018</span>
            </div>
          </div>
        </footer>

      </div>
      <!-- /.content-wrapper -->
</asp:Content>
