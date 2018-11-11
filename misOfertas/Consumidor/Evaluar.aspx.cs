using misOfertas.BLL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
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
                //Url del FTP.
                string usuario = "usuarioftp";
                string pass = "Portafolio2018";
                string ftp = "ftp://18.222.173.173/";

                byte[] fileBytes = null;

                //Convertir en array de byte.
                string fileName = Path.GetFileName(fuImagen.FileName);

                //Formeatear
                fuImagen.PostedFile.InputStream.Seek(0, SeekOrigin.Begin);
                using (var binaryReader = new BinaryReader(fuImagen.PostedFile.InputStream))
                {
                    fileBytes = binaryReader.ReadBytes(fuImagen.PostedFile.ContentLength);
                }

                try
                {
                    //Create FTP Request.
                    FtpWebRequest request = (FtpWebRequest)WebRequest.Create(ftp + "/" + fileName);
                    request.Method = WebRequestMethods.Ftp.UploadFile;

                    //Enter FTP Server credentials.
                    request.Credentials = new NetworkCredential(usuario, pass);
                    request.ContentLength = fileBytes.Length;
                    request.UsePassive = true;
                    request.UseBinary = true;
                    //request.ServicePoint.ConnectionLimit = fileBytes.Length;
                    //request.EnableSsl = false;

                    using (Stream requestStream = request.GetRequestStream())
                    {
                        requestStream.Write(fileBytes, 0, fileBytes.Length);
                        requestStream.Close();
                    }

                    FtpWebResponse response = (FtpWebResponse)request.GetResponse();

                    response.Close();
                }

                catch (WebException ex)
                {
                    throw new Exception((ex.Response as FtpWebResponse).StatusDescription);
                }
                Response.Redirect("ExitoEvaluar.aspx");
            }
            else
            {
                Response.Redirect("ErrorEvaluar.aspx");
            }
        }

       
    }
}