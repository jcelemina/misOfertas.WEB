<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroAgenteRetail.aspx.cs" Inherits="misOfertas.Agente_Retail.RegistroAgenteRetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
                    <input type="password" id="txtconfirmPassword"  class="form-control" placeholder="CONFIRMAR CONTRASEÑA" required="required" runat="server" />
               </div>  
                      </div>
                        
              <br/>
                <asp:Button ID="Button1" runat="server" Text="REGISTRAR" CssClass="btn btn-primary form-control" OnClick="Button1_Click"/>       
              <br/>
               <asp:label id="lblMensaje" runat="server" text=""></asp:label>
</form>
</body>
</html>
