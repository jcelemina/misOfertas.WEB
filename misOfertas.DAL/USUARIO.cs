//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace misOfertas.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class USUARIO
    {
        public USUARIO()
        {
            this.CAMPANA = new HashSet<CAMPANA>();
            this.CUPON = new HashSet<CUPON>();
            this.MAILLIST = new HashSet<MAILLIST>();
            this.PUNTOS = new HashSet<PUNTOS>();
            this.TIENDA = new HashSet<TIENDA>();
            this.VALORACION = new HashSet<VALORACION>();
        }
    
        public decimal ID_USUARIO { get; set; }
        public string NOMBRES_USUARIO { get; set; }
        public string APELLIDO_PATERNO { get; set; }
        public string APELLIDO_MATERNO { get; set; }
        public string CORREO { get; set; }
        public string CONTRASENA { get; set; }
        public string RUT { get; set; }
        public string ESTADO { get; set; }
        public System.DateTime FECHA { get; set; }
        public decimal ROL_USUARIO_FK { get; set; }
    
        public virtual ICollection<CAMPANA> CAMPANA { get; set; }
        public virtual ICollection<CUPON> CUPON { get; set; }
        public virtual ICollection<MAILLIST> MAILLIST { get; set; }
        public virtual ICollection<PUNTOS> PUNTOS { get; set; }
        public virtual ROL_USUARIO ROL_USUARIO { get; set; }
        public virtual ICollection<TIENDA> TIENDA { get; set; }
        public virtual ICollection<VALORACION> VALORACION { get; set; }
    }
}
