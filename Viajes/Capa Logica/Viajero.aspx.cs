using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Viajes.Capa_Logica
{
    public partial class Viajero : System.Web.UI.Page
    {
        
public string Pasaporte { get; private set; }
        public string Nombre { get; private set; }
        public string Nacionalidad { get; private set; }
        public string Apellido { get; private set; }

        protected void btnRegistrar_Click(object sender, EventArgs e)
            {
                Viajero nuevoViajero = new Viajero
                {
                    Nombre = txtNombre.Text,
                    Apellido = txtApellido.Text,
                    Pasaporte = txtPasaporte.Text,
                    Nacionalidad = txtNacionalidad.Text
                };

               
        }

    }
}
