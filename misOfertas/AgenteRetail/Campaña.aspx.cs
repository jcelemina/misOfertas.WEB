using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL = misOfertas.BLL;


namespace misOfertas.AgenteRetail
{
    public partial class Campaña : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            BLL.Usuarios usuario = (BLL.Usuarios)Session["usuario"];
            BLL.Tienda tienda = new BLL.Tienda();
            int i = (int)usuario.id;
            ddlTienda.DataSource = tienda.FindByUser(i,"Inscrita");
            ddlTienda.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BLL.Usuarios usuario = (BLL.Usuarios)Session["usuario"];
            BLL.Campana campana = new BLL.Campana();
            campana.nombre_campana = txtNombre.Text;
            campana.usuario_nombre = txtNombre.Text;
            campana.descripcion = txtDescripcion.Text;
            campana.fecha_inicio = txtFechaInicio.Value;
            campana.fecha_fin = txtfechaTermino.Value;
            campana.fecha = DateTime.Today.ToString();
            campana.usuario_fk = usuario.id;
            campana.tienda_fk = Convert.ToDecimal(ddlTienda.SelectedValue);

             bool creada = campana.create();

            if (creada == true)
            {

                lblMensaje.Text = creada.ToString();

            }
            else {

                lblMensaje.Text = "no fue posible el registro";
            }

        }
       
    }
}