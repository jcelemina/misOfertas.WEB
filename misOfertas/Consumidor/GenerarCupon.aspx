<%@ Page Title="" Language="C#" MasterPageFile="~/Consumidor/Consumidor.Master" AutoEventWireup="true" CodeBehind="GenerarCupon.aspx.cs" Inherits="misOfertas.Consumidor.GenerarCupon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
        <asp:Panel ID="Panel1" runat="server"  HorizontalAlign="Center">
     <div class="table tab-content" >



        <br/>

    <table class="table-hover">
                      <tr>
                          
        
                       <td><asp:Label ID="Label1" runat="server" Text="NOMBRE :" class="form-control input-lg"></asp:Label></td>
                       <td><asp:Label ID="lblNombre" runat="server" Text="Label" class="form-control input-lg"></asp:Label></td>
                       </tr>
                       <tr>
                       <td><asp:Label ID="Label2" runat="server" Text="RUT :"  class="form-control input-lg"></asp:Label></td>
                       <td><asp:Label ID="lblRut" runat="server" Text=""  class="form-control input-lg"></asp:Label></td>
                       </tr>
                       <tr>
                       <td><asp:Label ID="Label3" runat="server" Text="RUBRO :"  class="form-control input-lg"></asp:Label><asp:Label ID="lblRubro"  class="form-control" runat="server" Text="Label"></asp:Label></td>
                       <td><asp:DropDownList ID="ddlProducto" runat="server"  class="form-control input-lg" DataSourceID="EntityDataSource2" DataTextField="NOMBRE_RUBRO" DataValueField="ID_RUBRO">
                        </asp:DropDownList>
                        <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=Entities" DefaultContainerName="Entities" EnableFlattening="False" EntitySetName="RUBRO" EntityTypeFilter="RUBRO" Select="it.[ID_RUBRO], it.[NOMBRE_RUBRO]">
                        </asp:EntityDataSource>
                       </td>
                       </tr>
                       <tr>
                        <td><asp:Label ID="Label4" runat="server" Text="PUNTOS :"  class="form-control input-lg"></asp:Label><asp:Label ID="lblPuntos" runat="server" Text="Label"></asp:Label></td>
                       <td><asp:DropDownList ID="DropDownList1" runat="server" class="form-control input-lg" DataSourceID="EntityDataSource1" DataTextField="MAXIMO" DataValueField="ID_TRAMO" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:EntityDataSource ID="EntityDataSource1" runat="server"  ConnectionString="name=Entities" DefaultContainerName="Entities" EnableFlattening="False" EntitySetName="TRAMO" EntityTypeFilter="TRAMO" Select="it.[ID_TRAMO], it.[MAXIMO]">
                        </asp:EntityDataSource>
                       </td>
                       </tr>
                       <tr>
                       <td><asp:Label ID="etiquetaDescuento" runat="server"  class="form-control  input-lg" Text="DESCUENTO:"></asp:Label></td>
                       <td><asp:Label ID="lblDescuento" runat="server" Text="Label"  class="form-control  input-lg"></asp:Label></td>
                       </tr>
                          <tr>
                              <td><asp:Label ID="etiquetaFecha" runat="server" Text="FECHA VENCIMIENTO"></asp:Label></td>
                              <td><asp:Label ID="lblVencimiento" runat="server" Text="Label"></asp:Label></td>
                          </tr>
                            <tr>
                                <td colspan="2"><asp:Button ID="btnCupon" runat="server" OnClick="Button1_Click" Text="Cupón" Width="86px"  CssClass="btn btn-primary"/></td>
                            </tr>
                          <tr>
                              <td><asp:Label ID="etiquetaCondiciones" runat="server" Text="Cupón válido hasta la fecha indicada según el rubro selecionado, con tope monetario de"></asp:Label></td>
                              <td><asp:Label ID="lblTope" runat="server" Text="lblTope"></asp:Label> </td>
                              </tr>
                            
                        
                    
                          </table>

     </div> 
                  </asp:Panel>   
    
</asp:Content>
