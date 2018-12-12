using misOfertas.BLL;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace misOfertas.AgenteRetail
{
    public partial class Reporte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            Usuarios usuario = (Usuarios)Session["usuario"];
            DsValoraciones.SelectCommand = "select val.fecha, camp.nombre_campana, prod.nombre_producto, val.calidad, val.atencion, val.precio, us.nombres_usuario from valoracion val inner join oferta ofer on val.oferta_fk = ofer.id_oferta inner join campana camp on ofer.campana_fk = camp.id_campana inner join producto prod on ofer.producto_fk = prod.id_producto join rubro rub on prod.rubro_fk = rub.id_rubro join usuario us on us.id_usuario = val.usuario_fk where camp.usuario_fk = " + usuario.id.ToString();
            GvValoraciones.DataSource = DsValoraciones;
            GvValoraciones.DataBind();
        }

        protected void ExportToExcel(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=ReporteValoraciones.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw = new StringWriter())
            {
                HtmlTextWriter hw = new HtmlTextWriter(sw);

                //To Export all pages
                GvValoraciones.AllowPaging = false;
                GvValoraciones.DataBind();

                GvValoraciones.HeaderRow.BackColor = Color.White;
                foreach (TableCell cell in GvValoraciones.HeaderRow.Cells)
                {
                    cell.BackColor = GvValoraciones.HeaderStyle.BackColor;
                }
                foreach (GridViewRow row in GvValoraciones.Rows)
                {
                    row.BackColor = Color.White;
                    foreach (TableCell cell in row.Cells)
                    {
                        if (row.RowIndex % 2 == 0)
                        {
                            cell.BackColor = GvValoraciones.AlternatingRowStyle.BackColor;
                        }
                        else
                        {
                            cell.BackColor = GvValoraciones.RowStyle.BackColor;
                        }
                        cell.CssClass = "textmode";
                    }
                }

                GvValoraciones.RenderControl(hw);

                //style to format numbers to string
                string style = @"<style> .textmode { } </style>";
                Response.Write(style);
                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();
            }
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
    }
}