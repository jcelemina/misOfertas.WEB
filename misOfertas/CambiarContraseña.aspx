<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CambiarContraseña.aspx.cs" Inherits="misOfertas.CambiarContraseña" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>MisOfertas - Login</title>

    <!-- Bootstrap core CSS-->

    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet"/>

  </head>

  <body>

    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">MODIFICAR CONTRASEÑA</div>
        <div class="card-body">
          <form id="form2" runat="server" >
            <div class="form-group">
            <asp:TextBox  type="password" ID="txtpassword" runat="server" CssClass="form-control" placeholder="CONTRASEÑA" ></asp:TextBox>                
            </div>
            <div class="form-group">
            <asp:TextBox  type="password" ID="txtconfirPassword" runat="server" CssClass="form-control"  placeholder="CONFIRME CONTRASEÑA"></asp:TextBox>
            </div>
             <asp:Button ID="Button1" runat="server" Text="INGRESE ACÁ"  CssClass="btn btn-primary form-control" OnClick="Button1_Click"/>
              <br />
              <asp:Label ID="lblMensaje" runat="server" Text=""> </asp:Label>
          </form>
          <div class="text-center">
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  </body>

</html>

