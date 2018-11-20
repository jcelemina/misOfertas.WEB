<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="RegistroEmpresa.aspx.cs" Inherits="misOfertas.AgenteRetail.RegistroEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
      <div class="card  mx-auto mt-5">
        <div class="card-header">REGISTRO EMPRESA</div>
        <div class="card-body">
           <form  runat="server" >
               <div align="right">
                  <asp:Button ID="btnRegistrar" CssClass="btn btn-primary" runat="server" align="left" Text="Nueva Empresa" />

               </div><br />
            <div class="form-group">
            <div class="form-group">
            <asp:Label ID="lblEmpresa" align="center" runat="server" Text="RUT EMPRESA: "><asp:TextBox   ID="txtConsulta" runat="server"  placeholder="Ingrese Rut Empresa"></asp:TextBox></asp:Label>
            </div>
            <asp:Button ID="btnConsultar" CssClass="btn btn-primary" runat="server" Text="Consultar" OnClick="btnConsultar_Click" />
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Nueva Tienda" OnClick="Button1_Click"/>
            </div>
            <div class="form-group">
            <div class="form-group">
            <asp:GridView ID="GdVDatosEmpresa"  runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField AccessibleHeaderText="RUT EMPRESA" HeaderText="RUT EMPRESA">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("rut_empresa") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("rut_empresa") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField AccessibleHeaderText="EMPRESA" HeaderText="EMPRESA">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nombre_empresa") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("nombre_empresa") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField AccessibleHeaderText="TIENDA" HeaderText="TIENDA">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("nombre_tienda") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField AccessibleHeaderText="DIRECCIÓN" HeaderText="DIRECCIÓN">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("direccion") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField AccessibleHeaderText="ESTADO" HeaderText="ESTADO">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("estado") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
               </asp:GridView>
                </div>
               </div>
            <asp:Label ID="lblMensaje" runat="server" Text=""> </asp:Label><br/>

           </form>
           
            
        </div>
      </div>
    </div>
</asp:Content>
