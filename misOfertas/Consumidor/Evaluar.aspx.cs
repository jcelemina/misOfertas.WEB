using misOfertas.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace misOfertas.Consumidor
{
    public partial class Evaluar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEvaluar_Click(object sender, EventArgs e)
        {
            Valoracion valoracion = new Valoracion();
            valoracion.Atencion = decimal.Parse(txtAtencion.Text);
            valoracion.Calidad = decimal.Parse(txtCalidad.Text);
            valoracion.Precio = decimal.Parse(txtPrecio.Text);
            valoracion.Comentario = txtComentario.Text;
            valoracion.Fecha = DateTime.Now;
            valoracion.Imagen = fuImagen.FileName;
            valoracion.Oferta_fk = decimal.Parse(Session["idOferta"].ToString());
            valoracion.Usuario_fk = 242;


            if (valoracion.create())
            {
                Response.Redirect("ExitoEvaluar.aspx");
            }
            else
            {
                Response.Redirect("ErrorEvaluar.aspx");
            }
        }
    }
}