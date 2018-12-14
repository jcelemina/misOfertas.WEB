<%@ Page Title="" Language="C#" MasterPageFile="~/AgenteRetail/AgenteRetail.Master" AutoEventWireup="true" CodeBehind="Empresa.aspx.cs" Inherits="misOfertas.AgenteRetail.Empresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
     <section class="content">
    <div class="row">
    <div class="col-sm-3">
    </div>    
    <div class="col-sm-6">

        <div class="card card-login mx-auto mt-5">
           <div class="alert alert-success alert-dismissable" id="alertInsert" style="display:none"  >
              <button type="button" class="close" data-dismiss="alert">&times;</button>
              <strong>¡Exito!</strong> Empresa registrada!!!.
              </div>
        <div class="card-header" align="center"><h1>REGISTRO EMPRESA</h1></div>
            <div class="col-form-label">
                <br/>
                <br/>
            </div>
        <div class="card-body">
            <div class="form-group row">
            <asp:Label ID="lblRut" runat="server" CssClass="col-sm-2 col-form-label"  Text="Label">RUT </asp:Label>
            <div class="col-sm-10">
            <asp:TextBox   ID="txtRutEmpresa" runat="server" CssClass="form-control"  placeholder="RUT EMPRESA" Width="250"></asp:TextBox>
            </div>
            </div>
            <div class="form-group row">
            <asp:Label ID="lblNombre" runat="server" CssClass="col-sm-2 col-form-label"  Text="Label">NOMBRE </asp:Label>
            <div class="col-sm-10">
            <asp:TextBox   ID="txtNombreEmpresa" runat="server" CssClass="form-control"  placeholder="NOMBRE EMPRESA" Width="250"></asp:TextBox>
            </div>
            </div>
            <div class="form-group row">
            <asp:Label ID="lblRazon" runat="server" CssClass="col-sm-2 col-form-label"  Text="Label">RAZÓN SOCIAL</asp:Label>
            <div class="col-sm-10">
            <asp:TextBox ID="TxtRazonSocial" runat="server" CssClass="form-control" placeholder="RAZÓN SOCIAL"  Width="250"></asp:TextBox>                
            </div>
                </div>
               <div align="center">
              <asp:Button ID="Button1" runat="server" Text="REGISTRAR EMPRESA"  CssClass="btn btn-primary form-control" Width="200" OnClick="Button1_Click1" />
              </div>
                   <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
            <br />
              <div class="alert alert-warning alert-dismissable" id="alertExist" style="display:none"  >
              <strong>¡Error!</strong> No fue posible el registro, Empresa existe!!!.
              </div>
     
       <%--   </form>--%>
        </div>
      </div>
    </div>
      
    </div>
      
       
       <div class="col-md-3">

       </div>
        <%--</div>--%>
    </section>
</asp:Content>
