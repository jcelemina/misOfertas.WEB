using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL = misOfertas.BLL;

namespace misOfertas.AgenteRetail
{
    public partial class RegistroEmpresa : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           

            //if (Session["usuario"] == null  ) {
            //   Response.Redirect("~/login.aspx");
            //}
            //BLL.Usuarios usuario = (BLL.Usuarios)Session["usuario"];
            //if (usuario.rol_fk != 3)
            //{
            //    Response.Redirect("~/login.aspx");
            //}
            //if (usuario.estado != "Activo")
            //{
            //    Response.Redirect("~/login.aspx");
            //}


            //if (usuario != null)
            //{
            //    lblUsuario.Text = "BIENVENIDO," + " " + usuario.nombre_usuario.ToString();

            //}
          


        }

        BLL.Empresa empresa = new BLL.Empresa();
        BLL.Tienda tienda = new BLL.Tienda();

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string script = @"<script type='text/javascript'>mensaje();</script>";
            string mensajeError= @"<script type='text/javascript'>mensajeError();</script>";
            
            empresa.rut_empresa = txtRutEmpresa.Text;

            if (txtRutEmpresa.Text != "")
            {
                if (empresa.findByRut())
                {
                    Page.RegisterStartupScript("mensajeError", mensajeError);

                }
                else
                {
                    var nombre = empresa.nombre_empresa = txtNombreEmpresa.Text;
                    var razon = empresa.razon_social = TxtRazonSocial.Text;
                    var rut = empresa.rut_empresa = txtRutEmpresa.Text;

                    BLL.CommomBC.entities.Sp_InsertEmpresa(nombre, razon, empresa.estado, rut);
                    if (empresa.findByRut())
                    {
                        Page.RegisterStartupScript("mensaje", script);
                        //Response.Redirect("RegistroTienda.aspx");
                    

                    }

                }
            }
            else
            {
                lblMensaje.Text = " El campo Rut empresa no puede estar vacio";
            }
        }
    }
}