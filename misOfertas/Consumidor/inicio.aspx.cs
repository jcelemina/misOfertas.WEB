using System;
using System.Web.UI.WebControls;
using System.Net;


namespace misOfertas.Consumidor
{
    public partial class inicio : System.Web.UI.Page
    {
        private byte[] bvistaPrevia;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            BLL.Usuarios usuario = (BLL.Usuarios)Session["usuario"];
            if (usuario.rol_fk != 2)
            {
                Response.Redirect("~/login.aspx");
            }
            if (usuario.estado != "Activo")
            {
                Response.Redirect("~/login.aspx");
            }


            //try
            //{
            //    GvOfertas.DataSource = SqlDataSource1;
            //    GvOfertas.DataBind();
            //}
            //catch (Exception ex)
            //{

            //    throw ex;
            //}

            SqlDataSource1.SelectCommand = "select ofer.ID_OFERTA,camp.nombre_campana, prod.nombre_producto,ofer.CANTIDAD_MINIMA,ofer.CANTIDAD_MAXIMA,ofer.PRECIO_NORMAL,ofer.PRECIO_OFERTA,ofer.IMAGEN from oferta ofer join campana camp on ofer.campana_fk = camp.id_campana join producto prod on ofer.producto_fk = prod.id_producto where  camp.estado = 'Inscrita' and camp.fecha_fin > CURRENT_DATE";
            GvOfertas.DataSource = SqlDataSource1;
            GvOfertas.DataBind();
        }
        
        protected void GvOfertas_SelectedIndexChanged(object sender, EventArgs e)
        {

            Session["idOferta"] = GvOfertas.SelectedRow.Cells[0].Text;
            Response.Redirect("EvaluarOferta.aspx");
        }

        public String descargarImagen(string pDireccion)
        {
            string usuario = "usuarioftp";
            string pass = "Portafolio2018";
            string ftp = "ftp://18.222.173.173/";
            var webClient = new WebClient();
            webClient.Credentials = new NetworkCredential(usuario, pass);
            byte[] imageBytes = webClient.DownloadData(ftp + "/" + pDireccion);

            bvistaPrevia = imageBytes;


            var base64 = Convert.ToBase64String(bvistaPrevia);
            var imgSrc = String.Format("data:image/gif;base64,{0}", base64);

            return imgSrc;
        }
    }
}