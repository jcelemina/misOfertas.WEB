using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using misOfertas.DAL;

namespace misOfertas.BLL
{
    public class Valoracion
    {
        public decimal Id_Valoracion { get; set; }
        public System.DateTime Fecha { get; set; }
        public string Imagen { get; set; }
        public decimal Calidad { get; set; }
        public decimal Atencion { get; set; }
        public decimal Precio { get; set; }
        public string Comentario { get; set; }
        public decimal Oferta_fk { get; set; }
        public decimal Usuario_fk { get; set; }
        public decimal Tienda_fk { get; set; }

        public Valoracion(decimal id_Valoracion, DateTime fecha, string imagen, decimal calidad, decimal atencion, decimal precio, string comentario, decimal oferta_fk, decimal usuario_fk, decimal tienda_fk)
        {
            Id_Valoracion = id_Valoracion;
            Fecha = fecha;
            Imagen = imagen;
            Calidad = calidad;
            Atencion = atencion;
            Precio = precio;
            Comentario = comentario;
            Oferta_fk = oferta_fk;
            Usuario_fk = usuario_fk;
            Tienda_fk = tienda_fk;
        }

        public Valoracion()
        {

        }

        public bool create()
        {
            bool ingreso = false;
            try
            {
                //CommomBC.entities.addValoracion(Atencion, Calidad, Comentario, correo, pass.ToString(), rut, estado, fecha, rol_fk);
                ingreso = true;
            }
            catch (Exception e)
            {
                throw e;
            }

            return ingreso;
        }
    }
}
