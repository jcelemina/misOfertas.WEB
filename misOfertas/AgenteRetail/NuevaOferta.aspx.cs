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
        }
    }
}