using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace misOfertas.AgenteRetail
{
    public partial class GenerarCsv : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GvCSV.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            DateTime fecha = new DateTime();
            Response.AddHeader("content-disposition", "attachment;filename=" + fecha.Date.ToString() + ".csv");
            Response.Charset = "";
            Response.ContentType = "application/text";


            StringBuilder sb = new StringBuilder();
            for (int k = 0; k < GvCSV.Columns.Count; k++)
            {
                //add separator
                sb.Append(GvCSV.Columns[k].HeaderText + ',');
            }
            //append new line
            sb.Append("\r\n");
            for (int i = 0; i < GvCSV.Rows.Count; i++)
            {
                for (int k = 0; k < GvCSV.Columns.Count; k++)
                {
                    //add separator
                    sb.Append(GvCSV.Rows[i].Cells[k].Text + ',');
                }
                //append new line
                sb.Append("\r\n");
            }
            Response.Output.Write(sb.ToString());
            Response.Flush();
            Response.End();
        }

    }
}