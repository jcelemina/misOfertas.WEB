using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using misOfertas.BLL;
using System.IO;
using System.Net;

namespace misOfertas.Consumidor
{
    public partial class Ofertas : System.Web.UI.Page
    {
        private byte[] bvistaPrevia;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Oferta oferta = new Oferta();
            //GvOfertas.DataSource = oferta.listaOfertas();
            //GvOfertas.DataBind();

           
        }



        protected void GvOfertas_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            Session["idOferta"] = GvOfertas.SelectedRow.Cells[0].Text;
            Response.Redirect("Evaluar.aspx");
        }

        public Byte[] descargarImagen(string pDireccion)
        {
            string usuario = "usuarioftp";
            string pass = "Portafolio2018";
            string ftp = "ftp://18.222.173.173/";
            var webClient = new WebClient();
            webClient.Credentials = new NetworkCredential(usuario, pass);
            byte[] imageBytes = webClient.DownloadData(ftp + "/" + pDireccion);

            bvistaPrevia = imageBytes;
            return bvistaPrevia;
        }
    }
}