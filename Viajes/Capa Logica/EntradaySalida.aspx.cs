using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Viajes.Capa_Datos;

namespace Viajes.Capa_Logica
{
    public partial class EntradaySalida : System.Web.UI.Page
    {
        protected void btnRegistrarEntrada_Click(object sender, EventArgs e)
        {
            Entrada nuevaEntrada = new Entrada
            {
                IdViajero = int.Parse(ddlViajeroEntrada.SelectedValue),
                FechaEntrada = DateTime.Parse(txtFechaEntrada.Text),
                LugarEntrada = txtLugarEntrada.Text
            };

            
        }

        protected void btnRegistrarSalida_Click(object sender, EventArgs e)
        {
            Salida nuevaSalida = new Salida
            {
                IdViajero = int.Parse(ddlViajeroSalida.SelectedValue),
                FechaSalida = DateTime.Parse(txtFechaSalida.Text),
                LugarSalida = txtLugarSalida.Text
            };

        }

    }
}