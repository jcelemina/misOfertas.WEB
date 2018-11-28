using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BarcodeLib;
using System.Drawing;
using System.IO;
using iTextSharp;
using System.Net;

namespace misOfertas.Consumidor
{
    public partial class SacarCupon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            else
            {
                BLL.Usuarios usuario = usuario = (BLL.Usuarios)Session["usuario"];
                lblNombre.Text = usuario.nombre_usuario;
                lblRut.Text = usuario.rut;
                lblVencimiento.Text = DateTime.Now.AddMonths(1).ToShortDateString();

            }

            lblDescuento.DataBind();
            etiquetaDescuento.Visible = false;
            etiquetaFecha.Visible = false;
            lblDescuento.Visible = false;
            lblPuntos.Visible = false;
            lblRubro.Visible = false;
            etiquetaCondiciones.Visible = false;
            lblVencimiento.Visible = false;
            lblTope.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            btnCupon.Visible = false;
            lblPuntos.Text = DropDownList1.SelectedItem.ToString();
            lblRubro.Text = ddlProducto.SelectedItem.ToString();
            etiquetaDescuento.Visible = true;
            etiquetaFecha.Visible = true;
            lblDescuento.Visible = true;
            lblPuntos.Visible = true;
            lblRubro.Visible = true;
            etiquetaCondiciones.Visible = true;
            lblVencimiento.Visible = true;
            lblTope.Visible = true;
            DropDownList1.Visible = false;
            ddlProducto.Visible = false;

            if (lblPuntos.Text == "100")
            {
                lblDescuento.Text = "5%"; 
            }
            if (lblPuntos.Text == "500")
            {
                lblDescuento.Text = "10%";
            }
            if (lblPuntos.Text == "1000")
            {
                lblDescuento.Text = "15%";
            }
            if (lblRubro.Text == "Electrónica")
            {
                lblTope.Text = "$300.000.";
            }
            if (lblRubro.Text == "Alimentos")
            {
                lblTope.Text = "$100.000.";
            }
            if (lblRubro.Text == "Línea Blanca")
            {
                lblTope.Text = "$150.000.";
            }
            if (lblRubro.Text == "Ropa")
            {
                lblTope.Text = "$300.000.";
            }




            Response.ContentType = "aplication/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=cupón_de_descuento.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            iTextSharp.text.Image pic = iTextSharp.text.Image.GetInstance(generarCupon(), System.Drawing.Imaging.ImageFormat.Jpeg);
            var logo = iTextSharp.text.Image.GetInstance("ftp://usuarioftp:Portafolio2018@18.222.173.173/logo_MO2.jpg");
            var image = iTextSharp.text.Image.GetInstance(pic);
            this.Panel2.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            iTextSharp.text.Document pdfDoc = new iTextSharp.text.Document(iTextSharp.text.PageSize.LETTER, 10f, 10f, 100f, 10f);
            iTextSharp.text.html.simpleparser.HTMLWorker htmlParser = new iTextSharp.text.html.simpleparser.HTMLWorker(pdfDoc);
            image.ScaleAbsoluteHeight(100);
            image.ScaleAbsoluteWidth(200);
            logo.ScaleAbsoluteHeight(100);
            logo.ScaleAbsoluteWidth(100);

            logo.SetAbsolutePosition((iTextSharp.text.PageSize.LETTER.Width - logo.ScaledWidth) / 2, (iTextSharp.text.PageSize.LETTER.Height - logo.ScaledHeight) / (4/3));
            image.SetAbsolutePosition((iTextSharp.text.PageSize.LETTER.Width - image.ScaledWidth) / 2, (iTextSharp.text.PageSize.LETTER.Height - image.ScaledHeight) / 3);

            iTextSharp.text.pdf.PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            pdfDoc.Add(logo);
            htmlParser.Parse(sr);
            pdfDoc.Add(image);

            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();



        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "100")
            {
                lblDescuento.Text = "5%";
            }
            if (DropDownList1.SelectedValue == "500")
            {
                lblDescuento.Text = "10%";
            }

        }

        public System.Drawing.Image generarCupon()
        {
            BarcodeLib.Barcode codigo = new BarcodeLib.Barcode()
            {
                IncludeLabel = true,
               // Alignment = AlignmentPositions.CENTER,
                Height = 100,
                //Width = 150,
                //RotateFlipType = System.Drawing.RotateFlipType.RotateNoneFlipNone,
                BackColor = System.Drawing.Color.White,
                ForeColor = System.Drawing.Color.Black,
                EncodedType = TYPE.CODE128,
                AlternateLabel = lblRut.Text + lblVencimiento.Text,
                BarWidth = 140


            };


            codigo.ImageFormat = System.Drawing.Imaging.ImageFormat.Gif;
            System.Drawing.Image bitmap = codigo.Encode(TYPE.CODE128, lblVencimiento.Text.ToString(), 100, 150);
            using (MemoryStream ms = new MemoryStream())
            {
                bitmap.Save(ms, System.Drawing.Imaging.ImageFormat.Gif);

                var base64 = Convert.ToBase64String(ms.ToArray());
                var imgSrc = String.Format("data:image/gif;base64,{0}", base64);
                return bitmap;

            }
            
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            return;
        }

    }
}