using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL = misOfertas.BLL;

namespace misOfertas.AgenteRetail
{
    public partial class RegistroTienda : System.Web.UI.Page
    {
         
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("~/login.aspx");
            }


            BLL.Usuarios usuario = (BLL.Usuarios)Session["usuario"];

            if (usuario.rol_fk != 3)
            {
                Response.Redirect("~/login.aspx");
            }

            if (usuario.estado != "Activo") {

                Response.Redirect("~/login.aspx");
            }
            if (usuario != null)
            {
                lblMensaje.Text = "BIENVENIDO,"+" "+usuario.nombre_usuario.ToString();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string script = @"<script type='text/javascript'>mensaje();</script>";
            string mensajeError = @"<script type='text/javascript'>mensajeError();</script>";

            BLL.Tienda tienda = null;
            BLL.Empresa empresa = new BLL.Empresa();
            empresa.rut_empresa = ddlEmpresa.SelectedValue;
            bool existCompany = empresa.findByRut();
            BLL.Usuarios usuario = usuario = (BLL.Usuarios)Session["usuario"];
            if (existCompany == true){
              tienda = new BLL.Tienda();
              tienda.nombre_tienda = txtNombreTienda.Text;
              tienda.direccion = TxtDireccion.Text;
              tienda.id_empresa = empresa.id_empresa;
              tienda.id_usuario = (int)usuario.id;

                bool insert = tienda.create();

                if (insert == true){
                    Page.RegisterStartupScript("mensaje", script);
                 }else{
                    Page.RegisterStartupScript("mensajeError", mensajeError);
                }
                    



             }else{
                Response.Redirect("RegistroEmpresa.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("csv.aspx");
        }
    }
}