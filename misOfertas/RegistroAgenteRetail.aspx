<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroAgenteRetail.aspx.cs" Inherits="misOfertas.RegistroAgenteRetail" %>

<!DOCTYPE html>

<html lang="en">

  <head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Register</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
    <link href="css/sb-admin.css" rel="stylesheet">
      <script src="scripts/JavaScript.js"></script>
  </head>
    <body>
        <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">REGISTRO AGENTE RETAIL</div>
        <div class="card-body">
            
           <form id="form2" runat="server" >
             
            <div class="form-group">
            <div class="form-group">
            <asp:TextBox ID="txtRut" CssClass="form-control" runat="server" placeholder="RUT"></asp:TextBox>
            </div>
            <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" placeholder="NOMBRES"></asp:TextBox>                
            </div>
            <div class="form-group">
            <div class="form-group">
            <asp:TextBox ID="txtApellidoPaterno" CssClass="form-control" runat="server" placeholder="APELLIDO PATERNO"></asp:TextBox>
            </div>
            <asp:TextBox ID="txtApellidoMaterno" CssClass="form-control" runat="server" placeholder="APELLIDO MATERNO"></asp:TextBox>              
            </div>
            <div class="form-group">
            <div class="form-group">
            <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" placeholder="EMAIL"></asp:TextBox>
            </div>
            <asp:TextBox type="Password"  class="form-control" id="txtpassword" placeholder="CONTRASEÑA" required="required" runat="server"> </asp:TextBox>
            </div>
            <div class="form-group">
            <div class="form-group">
             <input type="password" id="txtconfirmPassword" class="form-control" placeholder="CONFIRMAR CONTRASEÑA" required="required" runat="server">
            </div>
            </div>
              <br/>
              <asp:Button ID="Button1" runat="server" Text="REGISTRAR" OnClick="Button1_Click"  CssClass="btn btn-primary form-control"/>       
              <br/>
               <div class="alert alert-danger" id="alertExist" style="display:none"  >
               <strong>¡Error!</strong>, upps algo paso, no fue posible el registro.
               </div> 
              <asp:label id="lblMensaje" runat="server" text=""></asp:label>
           </form>
            <div class="text-center">
            <a class="d-block small mt-3" href="login.aspx">Login Page</a>
        </div>
        </div>
      </div>
    </div>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/chart.js/Chart.min.js"></script>

</body>
</html>
