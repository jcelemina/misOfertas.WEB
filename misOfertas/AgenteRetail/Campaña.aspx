<%@ Page Title="" Language="C#" MasterPageFile="~/AgenteRetail/AgenteRetail.Master" AutoEventWireup="true" CodeBehind="Campaña.aspx.cs" Inherits="misOfertas.AgenteRetail.Campaña" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <section class="content">
   <div class="row">
    <div class="col-sm-3">


    </div>    
    <div class="col-sm-6">
      <div class="card card-login mx-auto mt-5">

        <div class="card-header"><h1>REGISTRO CAMPAÑA</h1></div>
        <div class="card-body">
            <div class="card-body">
            <br />
               <div class="alert alert-danger" id="alertExist" style="display:none"  >
              <button type="button" class="close" data-dismiss="alert">&times;</button>
              <strong>¡Error!</strong>, No fue posible el registro, Tienda existe!!!.
              </div> 
            </div>
            
           <div class="form-group row">
           <asp:Label ID="Label1" runat="server" class="col-sm-2 col-form-label">NOMBRE</asp:Label>
           <div class="col-sm-10">
           <asp:TextBox ID="txtNombre"  runat="server" CssClass="form-control" ></asp:TextBox>
           </div>
            </div>
            <div class="form-group row">
           <asp:Label ID="Label2" runat="server" class="col-sm-2 col-form-label">DESCRIPCIÓN</asp:Label>
           <div class="col-sm-10">
            <asp:TextBox ID="txtDescripcion" runat="server" class="form-control" ></asp:TextBox>
           </div>
           </div>
            <div class="form-group row">
             <asp:Label ID="Label3" runat="server"  class="col-sm-2 col-form-label">FECHA INICIO</asp:Label>
             <div class="col-sm-10">
             <input type="date" id="txtFechaInicio" runat="server" class="form-control"  data-inputmask="'alias': 'dd/mm/yyyy'" data-mask/>
             </div>
             </div>
            <div class="form-group row">
             <asp:Label ID="Label5" runat="server"  class="col-sm-2 col-form-label">FECHA TERMINO</asp:Label>
                
             <div class="col-sm-10">
              <input type="date" id="txtfechaTermino" runat="server"  class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask/>   
             </div>
             </div>
            <div class="form-group row">
             <asp:Label ID="Label6" runat="server"  class="col-sm-2 col-form-label">TIENDA</asp:Label>
             <div class="col-sm-10">
                 <asp:DropDownList ID="ddlTienda" runat="server"  DataValueField="id_tienda" DataTextField="nombre_tienda" CssClass="form-control"></asp:DropDownList>
                 
             </div>
             </div>
             <br/>
            <div align="center">
              <asp:Button ID="Button1" runat="server" Text="REGISTRAR" OnClick="Button1_Click"  CssClass="btn btn-primary" Width="200"/>       
            </div>
              <asp:label id="lblMensaje" runat="server" text=""></asp:label>
           </div>
            <div class="text-center">
           <%-- <a class="d-block small mt-3" href="login.aspx">Login Page</a>--%>
        </div>
      
      </div>
    </div>
       <div class="col-sm-3">

       </div>
        </div>
       
        <%--</div>--%>
    </section>

    
</asp:Content>
