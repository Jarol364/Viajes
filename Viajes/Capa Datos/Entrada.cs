using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Viajes.Capa_Datos
{
    public class Entrada
    {
    
            public int IdEntrada { get; set; }
            public int IdViajero { get; set; }
            public DateTime FechaEntrada { get; set; }
            public string LugarEntrada { get; set; }

            public Viajero Viajero { get; set; }
    }

}
