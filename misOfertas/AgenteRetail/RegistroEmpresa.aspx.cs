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

            if (Session["usuario"] == null) {
               Response.Redirect("~/login.aspx");
            }


            BLL.Usuarios usuario = (BLL.Usuarios)Session["usuario"];
            if (usuario != null)
            {
                lblMensaje.Text = usuario.id.ToString();

            }
          


        }

        BLL.Empresa empresa = new BLL.Empresa();
        BLL.Tienda tienda = new BLL.Tienda();

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
        //    //creacion de una instancia de empresa para la creacion de la misma.
        //    BLL.Empresa empresa = new BLL.Empresa();
          
        //    empresa.nombre_empresa = txtNombreEmpresa.Text;
        //    BLL.Usuarios usuario = (BLL.Usuarios)Session["usuario"];

        //    bool exist = usuario.findTiendaByIdUser();
        //    if (exist == true)
        //    {
        //        lblMensaje.Text = "Error!!, Usuario ya tiene una empresa registrada";
               
        //    }
        //    else
        //    {
        //        //Response.Redirect("RegistroEmpresa.aspx");
        //        if (empresa.findByRut()) // primero, se valida si existe
        //        {
        //            lblMensaje.Text = "Empresa ya Existe!!!";
        //            Response.Redirect("RegistroTienda.aspx");
        //        }
        //        else
        //        {


        //            BLL.CommomBC.entities.addEmpresa(empresa.nombre_empresa, empresa.razon_social, empresa.estado, empresa.rut_empresa);
        //            if (empresa.findByRut())
        //            {
        //                lblMensaje.Text = "Exito, Empresa Creada!!";
        //                Session["empresa"] = empresa;
        //                Response.Redirect("RegistroTienda.aspx");
        //            }
        //            else
        //            {
        //                lblMensaje.Text = "Upps, Algo paso!!";
        //            }
        //        }


        //    }
}

        protected void btnConsultar_Click(object sender, EventArgs e)
        {

            BLL.Usuarios usuario = (BLL.Usuarios)Session["usuario"];
            empresa.rut_empresa = txtConsulta.Text;
           
            if (txtConsulta.Text != "") {
                if (empresa.findByRut() )
                {
                    GdVDatosEmpresa.DataSource = tienda.findByCompany(empresa.id_empresa, (int)usuario.id); ;
                    GdVDatosEmpresa.DataBind();
                }else {
                    lblMensaje.Text = "empresa no registrada";
                }
            }else{
                lblMensaje.Text=" el campo Rut empresa no puede estar vacio";
            }
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("RegistroTienda.aspx");
        }
    }
}