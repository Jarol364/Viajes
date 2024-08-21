using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Viajes.Capa_Datos
{
    public class Salida
    {
        public int IdSalida { get; set; }
        public int IdViajero { get; set; }
        public DateTime FechaSalida { get; set; }
        public string LugarSalida { get; set; }

        // Relación con la tabla Viajero
        public Viajero Viajero { get; set; }
    }
}