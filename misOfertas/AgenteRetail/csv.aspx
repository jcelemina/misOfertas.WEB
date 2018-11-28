<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="csv.aspx.cs" Inherits="misOfertas.AgenteRetail.csv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="EDSCSV">
            <ItemTemplate>
                FECHA:
                <asp:Label ID="FECHALabel" runat="server" Text='<%# Eval("FECHA") %>' />
                <br />
                CALIDAD:
                <asp:Label ID="CALIDADLabel" runat="server" Text='<%# Eval("CALIDAD") %>' />
                <br />
                ATENCION:
                <asp:Label ID="ATENCIONLabel" runat="server" Text='<%# Eval("ATENCION") %>' />
                <br />
                PRECIO:
                <asp:Label ID="PRECIOLabel" runat="server" Text='<%# Eval("PRECIO") %>' />
                <br />
                OFERTA_FK:
                <asp:Label ID="OFERTA_FKLabel" runat="server" Text='<%# Eval("OFERTA_FK") %>' />
                <br />
                USUARIO_FK:
                <asp:Label ID="USUARIO_FKLabel" runat="server" Text='<%# Eval("USUARIO_FK") %>' />
                <br />
                COMENTARIO:
                <asp:Label ID="COMENTARIOLabel" runat="server" Text='<%# Eval("COMENTARIO") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:EntityDataSource ID="EDSCSV" runat="server" ConnectionString="name=Entities" DefaultContainerName="Entities" EnableFlattening="False" EntitySetName="VALORACION" Select="it.[FECHA], it.[CALIDAD], it.[ATENCION], it.[PRECIO], it.[OFERTA_FK], it.[USUARIO_FK], it.[COMENTARIO]">
        </asp:EntityDataSource>
    <div>
    
    </div>
    </form>
</body>
</html>
