<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SacarCupon.aspx.cs" Inherits="misOfertas.Consumidor.SacarCupon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Generar Cupón de descuento</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet"/>
    <link href="css/sb-admin.css" rel="stylesheet"/>
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Cupón de descuento</div>
        <div class="card-body">
    <form id="form1" runat="server">
    <div>
            <asp:Image ID="Image1" runat="server" ImageAlign="AbsMiddle" Height="119px" ImageUrl="~/css/Assets/logo MO.jpeg" Width="154px" />
        <br />
    </div>

            <asp:Panel ID="Panel2" runat="server" Height="553px" Width="241px" HorizontalAlign="Center" CssClass="auto-style1">
                Nombre:&nbsp;<asp:Label ID="lblNombre" runat="server" Text="Label"></asp:Label>
                <br />
                Rut:
                <asp:Label ID="lblRut" runat="server" Text="Label"></asp:Label>
                &nbsp;<br />
                Rubro:
                <asp:DropDownList ID="ddlProducto" runat="server" DataSourceID="EntityDataSource2" DataTextField="NOMBRE_RUBRO" DataValueField="ID_RUBRO">
                </asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=Entities" DefaultContainerName="Entities" EnableFlattening="False" EntitySetName="RUBRO" EntityTypeFilter="RUBRO" Select="it.[ID_RUBRO], it.[NOMBRE_RUBRO]">
                </asp:EntityDataSource>
                <br />
                Puntos:
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="EntityDataSource1" DataTextField="MAXIMO" DataValueField="ID_TRAMO" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Entities" DefaultContainerName="Entities" EnableFlattening="False" EntitySetName="TRAMO" EntityTypeFilter="TRAMO" Select="it.[ID_TRAMO], it.[MAXIMO]">
                </asp:EntityDataSource>
                <br />
                Descuento:
                <asp:Label ID="lblDescuento" runat="server" Text="Label"></asp:Label>
                <br />
                Código de barras:<br />
                <asp:Image ID="Image2" runat="server" />
                <br />
                <br />
                Fecha de vencimiento:
                <asp:Label ID="lblVencimiento" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Button ID="btnCupon" runat="server" OnClick="Button1_Click" Text="Cupón" Width="86px" />
                <br />
                Cupón válido hasta la fecha indicada según el rubro selecionado, con tope monetario de
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
