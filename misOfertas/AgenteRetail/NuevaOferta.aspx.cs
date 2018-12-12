using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using misOfertas.BLL;
using System.IO;
using System.Net;

namespace misOfertas.AgenteRetail
{
    public partial class NuevaOferta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            BLL.Usuarios usuario = (BLL.Usuarios)Session["usuario"];
            if (usuario.rol_fk != 3)
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
        }


        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string script = @"<script type='text/javascript'>mensaje();</script>";
            string mensajeError = @"<script type='text/javascript'>mensajeError();</script>";

            Oferta oferta = new Oferta();
            oferta.Cantidad_Minima = decimal.Parse(txtCantidadMinima.Text);
            oferta.Cantidad_Maxima = decimal.Parse(txtCantidadMaxima.Text);
            oferta.Precio_Normal = decimal.Parse(txtPrecioNormal.Text);
            oferta.Precio_Oferta = decimal.Parse(txtPrecioOferta.Text);
            oferta.Producto_fk = decimal.Parse(ddlProducto.SelectedValue);
            oferta.Campana_fk = decimal.Parse(ddlCampana.SelectedValue);
            oferta.Imagen = fuImagen.FileName;
            oferta.Fecha = DateTime.Now;

            if (oferta.create())
            {
                //Url del FTP.
                string usuario = "usuarioftp";
                string pass = "Portafolio2018";
                string ftp = "ftp://18.222.173.173";

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
                Page.RegisterStartupScript("mensaje", script);
            }
            else
            {
                Page.RegisterStartupScript("mensajeError", mensajeError);
            }
        }
    }
}