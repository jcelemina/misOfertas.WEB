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
    
    public partial class TIENDA
    {
        public decimal ID_TIENDA { get; set; }
        public string NOMBRE_TIENDA { get; set; }
        public string DIRECCION { get; set; }
        public string ESTADO { get; set; }
        public decimal EMPRESA_FK { get; set; }
        public decimal USUARIO_FK { get; set; }
    
        public virtual EMPRESA EMPRESA { get; set; }
        public virtual USUARIO USUARIO { get; set; }
    }
}
