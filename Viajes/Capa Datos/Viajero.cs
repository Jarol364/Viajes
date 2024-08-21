using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Viajes.Capa_Datos
{
    public class Viajero
    {
        public int IdViajero { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Pasaporte { get; set; }
        public string Nacionalidad { get; set; }
    }
}