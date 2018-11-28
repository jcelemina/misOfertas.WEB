<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SacarCupon.aspx.cs" Inherits="misOfertas.Consumidor.SacarCupon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet"/>
    <link href="css/sb-admin.css" rel="stylesheet"/>
</head>
<body>
    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-body">
    <form id="form1" runat="server">
    <div>
        <br />
    </div>

            <asp:Panel ID="Panel2" runat="server" Height="634px" Width="241px" HorizontalAlign="Center">
                 

<%--                <asp:Image ID="Image3" runat="server" ImageUrl="ftp://usuarioftp:Portafolio2018@18.222.173.173/logo_MO2.jpg"  Width="163px" Height="99px" ImageAlign="Top" />--%>
                                 <div class="card-header">Cupón de descuento</div>
        <br />
                Nombre:&nbsp;<asp:Label ID="lblNombre" runat="server" Text="Label"></asp:Label>
                <br />
                Rut:
                <asp:Label ID="lblRut" runat="server" Text="Label"></asp:Label>
                &nbsp;<br />
                Rubro:
                <asp:Label ID="lblRubro" runat="server" Text="Label"></asp:Label>
                <asp:DropDownList ID="ddlProducto" runat="server" DataSourceID="EntityDataSource2" DataTextField="NOMBRE_RUBRO" DataValueField="ID_RUBRO">
                </asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=Entities" DefaultContainerName="Entities" EnableFlattening="False" EntitySetName="RUBRO" EntityTypeFilter="RUBRO" Select="it.[ID_RUBRO], it.[NOMBRE_RUBRO]">
                </asp:EntityDataSource>
                <br />
                Puntos: <asp:Label ID="lblPuntos" runat="server" Text="Label"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="EntityDataSource1" DataTextField="MAXIMO" DataValueField="ID_TRAMO" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Entities" DefaultContainerName="Entities" EnableFlattening="False" EntitySetName="TRAMO" EntityTypeFilter="TRAMO" Select="it.[ID_TRAMO], it.[MAXIMO]">
                </asp:EntityDataSource>
                <br />
                <asp:Label ID="etiquetaDescuento" runat="server" Text="Descuento:"></asp:Label>
                <asp:Label ID="lblDescuento" runat="server" Text="Label"></asp:Label>
                <br />
                <%--  <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl='<%# generarCupon() %>' Width="150px" />--%>
                <br />
                <asp:Label ID="etiquetaFecha" runat="server" Text="Fecha de Vencimiento:"></asp:Label>
                <asp:Label ID="lblVencimiento" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Button ID="btnCupon" runat="server" OnClick="Button1_Click" Text="Cupón" Width="86px" />
                <br />
                <asp:Label ID="etiquetaCondiciones" runat="server" Text="Cupón válido hasta la fecha indicada según el rubro selecionado, con tope monetario de"></asp:Label>
                <asp:Label ID="lblTope" runat="server" Text="lblTope"></asp:Label>
        </asp:Panel>
    </form>
         </div>
        </div>
      </div>
        <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/chart.js/Chart.min.js"></script>
</body>
</html>
