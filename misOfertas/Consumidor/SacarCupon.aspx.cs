using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BarcodeLib;
using System.Drawing;

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
                lblNombre.Text = usuario.nombre_usuario+ " " +usuario.apellido_paterno;
                lblRut.Text = usuario.rut;
                lblVencimiento.Text = DateTime.Now.AddMonths(1).ToShortDateString();
            }
            BarcodeLib.Barcode codigo = new BarcodeLib.Barcode()
            {
                IncludeLabel = true,
                Alignment = AlignmentPositions.CENTER,
                Width = 200,
                Height = 100,
                RotateFlipType = System.Drawing.RotateFlipType.RotateNoneFlipNone,
                BackColor = System.Drawing.Color.White,
                ForeColor = System.Drawing.Color.Black,
                EncodedType = TYPE.CODE128,
                AlternateLabel = lblRut.Text + lblVencimiento.Text
            };


            codigo.ImageFormat = System.Drawing.Imaging.ImageFormat.Gif;
            System.Drawing.Image bitmap = codigo.Encode(TYPE.CODE128, lblRut.Text+lblVencimiento);
            System.IO.MemoryStream stream = new System.IO.MemoryStream();

            Image2 = bitmap;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


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
    }
}