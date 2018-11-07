using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace misOfertas.BLL
{
    public class Empresa
    {
        public int id_empresa { get; set; }
        public string rut_empresa { get; set; }
        public string nombre_empresa { get; set; }
        public string razon_social { get; set; }
        public string estado { get; set; }

        public Empresa()
        {
            this.estado = "Pendiente";
        }
        public Empresa(int id_empresa,string rut_empresa, string nombre_empresa, string razon_social,string estado)
        {
            this.id_empresa = id_empresa;
            this.rut_empresa = rut_empresa;
            this.nombre_empresa = nombre_empresa;
            this.razon_social = razon_social;
            this.estado = estado;
        }

        public bool create() {
            try
            {
                CommomBC.entities.addEmpresa(nombre_empresa, razon_social, estado, rut_empresa);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool findByRut()
        {
            bool exist = false;
            DAL.EMPRESA emp = CommomBC.entities.EMPRESA.FirstOrDefault(em => em.RUT == rut_empresa);
            if (emp != null)
            {
                id_empresa = (int)emp.ID_EMPRESA;
                exist = true;
            }

            return exist;
        }



        // validar si el usuario ya tiene una compañia

        
    }
}
