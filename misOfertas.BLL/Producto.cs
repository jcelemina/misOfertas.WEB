using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace misOfertas.BLL
{
    public class producto
    {
        public int id_producto { get; set; }
        public string nombre_producto { get; set; }
        public string descripcion { get; set; }
        public string color { get; set; }
        public string marca { get; set; }
        public string perecible { get; set; }
        public int rubro_fk { get; set; }

        public producto()
        {

        }

        public producto(int id_producto, string nombre_producto,string descripcion, string color, string marca,string perecible, int rubro)
        {

            this.id_producto = id_producto;
            this.nombre_producto = nombre_producto;
            this.descripcion = descripcion;
            this.color = color;
            this.marca = marca;
            this.perecible = perecible;
            this.rubro_fk = rubro_fk;
        }

        public bool Create()
        {
            
            bool ingreso = false;
            try
            {
                CommomBC.entities.addProducto(nombre_producto,descripcion,color,perecible,marca,rubro_fk);
                ingreso = true;
            }
            catch (Exception e)
            {
                throw e;
            }

            return ingreso;
        }
        public bool Read()
        {
            try
            {
                DAL.PRODUCTO product = CommomBC.entities.PRODUCTO.First(e=> e.ID_PRODUCTO == id_producto);
                id_producto = (int)product.ID_PRODUCTO;
                nombre_producto = product.NOMBRE_PRODUCTO;
                descripcion = product.DESCRIPCION;
                color = product.COLOR;
                marca = product.MARCA;
                perecible = product.PERECIBLE;
                rubro_fk = (int)product.RUBRO_FK;
                

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool Update()
        {
            bool update = false;
            try
            {

                CommomBC.entities.updateProduct(id_producto,nombre_producto,descripcion,color,perecible,marca);
               
               update= true;
            }
            catch (Exception)
            {
                update= false;
            }

            return update;
        }
        public bool Delete()
        {
            try
            {
                DAL.PRODUCTO product = CommomBC.entities.PRODUCTO.First(e => e.ID_PRODUCTO == id_producto);
                CommomBC.entities.PRODUCTO.Remove(product);
                CommomBC.entities.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }
        public int GetId()
        {

            decimal aux;
            try
            {
                aux = listProduct().Max(e => e.id_producto);
            }
            catch (Exception)
            {
                aux = 0;
            }

            return (int)aux;
        }
        public List<producto> listProduct()
        {
            List<producto> salida = new List<producto>();
            foreach (DAL.PRODUCTO product in CommomBC.entities.PRODUCTO)
            {
                salida.Add(new producto()
                {
                    id_producto = (int)product.ID_PRODUCTO,
                    nombre_producto = product.DESCRIPCION,
                    descripcion = product.COLOR,
                    color = product.COLOR,
                    marca = product.MARCA,
                    perecible = product.PERECIBLE,
                    rubro_fk = (int) product.RUBRO_FK

                });
            }
            return salida;
        }




    }
}
