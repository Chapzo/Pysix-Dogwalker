using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataBase;

namespace Negocio
{
public class Mascota : Respuesta
    {

        PyxisDataContext data = new PyxisDataContext();

        public List<dboddlMascotaResult> ListaMasc(int Id)
        {
            try
            {
                List<dboddlMascotaResult> ListaDeMascotas = data.dboddlMascota(Id).ToList();
                setCodigo("ok");
                setRTA("busqueda efectuada correctamente");
                return ListaDeMascotas;
            }
            catch (Exception ex)
            {
                setCodigo("error");
                setRTA(ex.Message);
                return null;
            }

        }

        public void Crear_Raza(string nombre)
        {
            Mascotas mascotas = new Mascotas();
            data.Crear_raza(nombre);
        }

        public int RazaNueva (string Nombre)
        {



            try
            {
                Razas ob = ( from f in data.Razas
                                        where f.nombre == Nombre 
                                        select f).FirstOrDefault();
                
                setCodigo("ok");
                setRTA("se realizo la consulta exitosamente");
                return ob.idRaza;
            }
            catch (Exception Ex)
            {
                setCodigo("Error");
                setRTA(Ex.Message);
                return 0;

            }

        }
        //public bool CrearPaseador(int id, string especialidad, float precio, int HoraIni, int HoraFin, string Dias, byte[] pdf)
    }
}
