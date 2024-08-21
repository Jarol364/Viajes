using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Viajes.Capa_Datos;

namespace Viajes.Capa_Logica
{
    public partial class Viajes : System.Web.UI.Page
    {
      
            protected void btnRegistrarViaje_Click(object sender, EventArgs e)
            {
                Viaje nuevoViaje = new Viaje
                {
                    IdViajero = int.Parse(ddlViajero.SelectedValue),
                    FechaSalida = DateTime.Parse(txtFechaSalida.Text),
                    FechaRegreso = DateTime.Parse(txtFechaRegreso.Text),
                    Destino = txtDestino.Text
                };
            }
    }
}