using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataBase;

namespace Negocio
{
   public class paseador : Respuesta
    {

        PyxisDataContext data = new PyxisDataContext();
        public bool CrearPaseador(int id, string disponibilidad, string experiencia, string especialidad, float precio, string nombre)
        {
            try
            {
                data.Crearpaseador(id, disponibilidad, experiencia, especialidad, precio);
                setCodigo("ok");
                setRTA("muchas gracias"+nombre+"ahora eres uno de nuestros paseadores");
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
    
