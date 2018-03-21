using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataBase;

namespace Negocio
{
   public class Paseador : Respuesta
    {

        PyxisDataContext data = new PyxisDataContext();
        public bool CrearPaseador(int id, int disponibilidad, string experiencia, string especialidad, float precio, string nombre)
        {
            try
            {
                data.Crearpaseador(id, disponibilidad, experiencia, especialidad, precio);
                setCodigo("ok");
                setRTA("Muchas gracias "+nombre+", ahora eres uno de nuestros paseadores");
                return true;
            }
            catch (Exception EX)
            {

                setCodigo("error");
                setRTA(EX.Message);
                return false;
            }

        }
    }
}
    
