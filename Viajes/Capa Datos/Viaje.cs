using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Viajes.Capa_Logica;

namespace Viajes.Capa_Datos
{
    public class Viaje
    {
        public int IdViaje { get; set; }
        public int IdViajero { get; set; }
        public DateTime FechaSalida { get; set; }
        public DateTime FechaRegreso { get; set; }
        public string Destino { get; set; }

        public Viajero Viajero { get; set; }
    }
}