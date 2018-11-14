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
            BLL.Usuarios usuario = (BLL.Usuarios)Session["usuario"];

            if (Session["usuario"] == null) {
                Response.Redirect("~/login.aspx");
            }

            lblMensaje.Text = usuario.nombre_usuario+", Registre Empresa!!! ";

          
        }

       

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            //creacion de una instancia de empresa para la creacion de la misma.
            BLL.Empresa empresa = new BLL.Empresa();
            empresa.rut_empresa = TxtRut.Text;
            empresa.nombre_empresa = txtNombreEmpresa.Text;
            empresa.razon_social = TxtRazonSocial.Text;
            BLL.Usuarios usuario = (BLL.Usuarios)Session["usuario"];

            bool exist = usuario.findTiendaByIdUser();
            if (exist == true)
            {
                lblMensaje.Text = "Error!!, Usuario ya tiene una empresa registrada";
               
            }
            else
            {
                //Response.Redirect("RegistroEmpresa.aspx");
                if (empresa.findByRut()) // primero, se valida si existe
                {
                    lblMensaje.Text = "Empresa ya Existe!!!";
                    Response.Redirect("RegistroTienda.aspx");
                }
                else
                {


                    BLL.CommomBC.entities.addEmpresa(empresa.nombre_empresa, empresa.razon_social, empresa.estado, empresa.rut_empresa);
                    if (empresa.findByRut())
                    {
                        lblMensaje.Text = "Exito, Empresa Creada!!";
                        Session["empresa"] = empresa;
                        Response.Redirect("RegistroTienda.aspx");
                    }
                    else
                    {
                        lblMensaje.Text = "Upps, Algo paso!!";
                    }
                }


            }



            
        }
    }
}