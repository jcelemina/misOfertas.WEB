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
            if (Session["usuario"] == null){
                Response.Redirect("~/login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BLL.Tienda tienda = null;
            BLL.Empresa empresa = new BLL.Empresa();
            empresa.rut_empresa = txtRutEmpresa.Text;
            bool existCompany = empresa.findByRut();
            BLL.Usuarios usuario = usuario = (BLL.Usuarios)Session["usuario"];
            if (existCompany == true){
                    
                    tienda = new BLL.Tienda();
                    tienda.nombre_tienda = txtNombreTienda.Text;
                    tienda.direccion = TxtDireccion.Text;
                    tienda.id_empresa = empresa.id_empresa;
                    tienda.id_usuario = (int)usuario.id;
                    bool existStore = tienda.findByStoreAndUser();// ojo, se valida si la tienda y el usuario existe!!
                    if (existStore==true){
                        lblMensaje.Text = "Error, la tienda se encuentra registrada";
                    }else{
                        bool insert = tienda.create();
                        if (insert == true){
                            lblMensaje.Text = "Tienda Registrada con Exito";
                        }else{
                            lblMensaje.Text = "Upps!! no se pudo registrar la tienda, intenta mas tarde";
                        }
                    }



             }else{
                Response.Redirect("RegistroEmpresa.aspx");
            }
        }
    }
}