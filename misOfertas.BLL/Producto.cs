using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using misOfertas.DAL;

namespace misOfertas.BLL
{
    public class Producto
    {
        public decimal ID_PRODUCTO { get; set; }
        public string NOMBRE_PRODUCTO { get; set; }
        public string COLOR { get; set; }
        public string PERECIBLE { get; set; }
        public string MARCA { get; set; }
        public string DESCRIPCION { get; set; }
        public decimal RUBRO_FK { get; set; }

        public Producto(decimal iD_PRODUCTO, string nOMBRE_PRODUCTO, string cOLOR, string pERECIBLE, string mARCA, string dESCRIPCION, decimal rUBRO_FK)
        {
            ID_PRODUCTO = iD_PRODUCTO;
            NOMBRE_PRODUCTO = nOMBRE_PRODUCTO;
            COLOR = cOLOR;
            PERECIBLE = pERECIBLE;
            MARCA = mARCA;
            DESCRIPCION = dESCRIPCION;
            RUBRO_FK = rUBRO_FK;
        }

        public Producto()
        {

        }


        //public List<Producto> listarProductos()
        //{
        //    List<Producto> productos = new List<Producto>();
        //    productos = CommomBC.entities.SELECTPRODUCTO;
        //}
    }
}
