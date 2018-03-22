﻿using System;
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
        public bool CrearPaseador(int id,  string especialidad, float precio, int HoraIni, int HoraFin, string Dias, byte[] pdf)
        {
            try
            {
                data.Crearpaseador(id, pdf,  especialidad,precio,  HoraIni, HoraFin, Dias);
                setCodigo("ok");
                setRTA("Muchas gracias "+", ahora eres uno de nuestros paseadores");
                return true;
            }
            catch (Exception EX)
            {

                setCodigo("error");
                setRTA(EX.Message);
                return false;
            }

        
        }
        public bool rolselec(int id, int numero)
        {
            try
            {
                data.RolSeleccionador(id,numero);
                setCodigo("ok");
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
    
