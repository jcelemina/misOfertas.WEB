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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            BLL.Empresa empresa = new BLL.Empresa();
            empresa.rut_empresa = TxtRut.Text;
            empresa.nombre_empresa = txtNombreEmpresa.Text;
            empresa.razon_social = TxtRazonSocial.Text;


            if (empresa.findByRut())
            {
                lblMensaje.Text = "Empresa ya Existe!!!";
            }else {

                BLL.CommomBC.entities.addEmpresa(empresa.nombre_empresa, empresa.razon_social, empresa.estado, empresa.rut_empresa);
                if (empresa.findByRut()){
                    lblMensaje.Text = "Exito, Empresa Creada!!";
                    Session["empresa"] = empresa;
                    Response.Redirect(Session["empresa"].ToString());
                }else{
                    lblMensaje.Text = "upps, Algo paso!!";
                }
            } 
            

           }
    }
}