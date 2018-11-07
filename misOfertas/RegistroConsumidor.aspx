<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroConsumidor.aspx.cs" Inherits="misOffertas.RegistroConsumidor" %>

<!DOCTYPE html>

<html lang="en">

  <head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Register</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <!-- <link href="css/sb-admin.css" rel="stylesheet"> -->

  </head>

  <body class="bg-dark">

    <div class="container">
      <div class="card card-register mx-auto mt-5">
        <div class="card-header">Registro Consumidor</div>
        <div class="card-body">
          <form runat="server">
                <div class="form-group">
                <div class="col-md-6">
                <asp:Label ID="lblRut" runat="server" Text="RUT"></asp:Label>
                <asp:TextBox ID="txtRut" CssClass="form-control" runat="server" placeholder="RUT"></asp:TextBox>
                </div>
                </div>
               <div class="form-group">
                <div class="col-md-6">
                    <asp:Label ID="lblNombres" runat="server" Text="NOMBRES"></asp:Label>
                   <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" placeholder="NOMBRES"></asp:TextBox>
                </div>
                  </div>
               
                <div class="form-group">
                <div class="col-md-6">
                    <asp:Label ID="Label1" runat="server" Text="APELLIDO PATERNO"></asp:Label>
                    <asp:TextBox ID="txtApellidoPaterno" CssClass="form-control" runat="server" placeholder="APELLIDO PATERNO"></asp:TextBox>
                </div>
                </div>
              
                <div class="form-group">
                <div class="col-md-6">
                    <asp:Label ID="Label2" runat="server" Text="APELLIDO MATERNO"></asp:Label>
                   <asp:TextBox ID="txtApellidoMaterno" CssClass="form-control" runat="server" placeholder="APELLIDO MATERNO"></asp:TextBox>
                </div>
                </div>
               
              <div class="form-group">
                <div class="col-md-6">
                    <asp:Label ID="Label3" runat="server" Text="CORREO ELECTRONICO"></asp:Label>
                   <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" placeholder="EMAIL"></asp:TextBox>
                </div>
               </div>
              <div class="form-group">
               <div class="col-md-6">
                   <asp:Label ID="Label4" runat="server" Text="CONTRASEÑA"></asp:Label>
                    <asp:TextBox type="Password"  class="form-control" id="txtpassword" placeholder="CONTRASEÑA" required="required" runat="server"> </asp:TextBox>
               </div>

              </div>
                  <div class="form-group">
                <div class="col-md-6">
                   <asp:Label ID="Label5" runat="server" Text="CONFIRMAR CONTRASEÑA"></asp:Label>
                    <input type="password" id="txtconfirmPassword" class="form-control" placeholder="CONFIRMAR CONTRASEÑA" required="required" runat="server">
               </div>  
                      </div>
                        
              <br/>
                           
                  <asp:Button ID="Button1" runat="server" Text="REGISTRAR" OnClick="Button1_Click"  CssClass="btn btn-primary form-control"/>       
              <br/>
                 
        <asp:label id="lblMensaje" runat="server" text=""></asp:label>
          </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="login.aspx">Login Page</a>
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

