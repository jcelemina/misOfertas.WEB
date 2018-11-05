<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Nuevo Usuario.aspx.cs" Inherits="misOfertas.Administrador.Usuario.Nuevo_Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    
    <form runat="server" >
        <div class="form-row" >
            <div class="col">
                <asp:Label ID="Label2" runat="server" Text="RUT"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtRut" runat="server" placeholder="RUT"></asp:TextBox><br/>
                <asp:Label ID="Label3" runat="server" Text="NOMBRE"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtNombre" runat="server" placeholder="NOMBRE" ></asp:TextBox><br/>
                <asp:Label ID="Label4" runat="server" Text="APELLIDO PATERNO"></asp:Label>&nbsp;
                <asp:TextBox ID="txtPaterno" runat="server" placeholder="APELLIDO PATERNO"></asp:TextBox><br/>
                <asp:Label ID="Label5" runat="server" Text="APELLIDO MATERNO"></asp:Label> 
                <asp:TextBox ID="txtMaterno" runat="server" placeholder="APELLIDO MATERNO"></asp:TextBox><br/>
                <asp:Label ID="Label6" runat="server" Text="CORREO"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:TextBox ID="txtCorreo" runat="server" placeholder="CORREO"></asp:TextBox><br/> 
                <asp:Label ID="Label7" runat="server" Text="CONTRASEÑA"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox type="Password"  id="txtPassword" placeholder="CONTRASEÑA" required="required" runat="server"> </asp:TextBox><br/>
                <asp:Label ID="Label1" runat="server" Text="PERFIL"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="rol" runat="server" DataSourceID="SqlDataSource" DataTextField="NOMBRE" DataValueField="ID_ROL_USUARIO"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Rol_nombre %>" ProviderName="<%$ ConnectionStrings:Rol_nombre.ProviderName %>" SelectCommand="SELECT &quot;ID_ROL_USUARIO&quot;, &quot;NOMBRE&quot; FROM &quot;ROL_USUARIO&quot;"></asp:SqlDataSource>
           </div>
        </div>
        <div>
             <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
            <br/>
             <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
            </div>
        </form>


</asp:Content>
