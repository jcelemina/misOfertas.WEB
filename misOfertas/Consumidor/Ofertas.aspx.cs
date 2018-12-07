using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using misOfertas.BLL;
using System.IO;
using System.Net;
using System.Collections;

namespace misOfertas.Consumidor
{
    public partial class Ofertas : System.Web.UI.Page
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


            if (usuario != null)
            {
              
             lblUsuario.Text = "BIENVENIDO," + " " + usuario.nombre_usuario.ToString();

            }
            try
            {
                GvOfertas.DataSource = SqlDataSource1;
                GvOfertas.DataBind();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            


        }

        //public List<IEnumerable> listaImagenes()
        //{
        //    Oferta oferta = new Oferta();
        //    List<IEnumerable> listanueva = new List<IEnumerable>();
        //    foreach (var aux in oferta.listaOfertas())
        //    {
        //        listanueva.Add(descargarImagen(aux.Imagen));
        //    }

        //    return listanueva;
        //}



        protected void GvOfertas_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            Session["idOferta"] = GvOfertas.SelectedRow.Cells[0].Text;
            Response.Redirect("Evaluar.aspx");
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

        protected void ObjectDataSource1_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
        {

        }
    }
}