using System.Data.SqlClient;

namespace Viajes.Datos
{
    public class LoginDatos
    {
        private string connectionString = "Data Source=miservidor;Initial Catalog=viajes;User ID=miusuario;Password=micontraseña;";

        public void RegistrarLogin(int id_viajero, string username, string password, string role)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "INSERT INTO Login (id_viajero, username, password, role) VALUES (@id_viajero, @username, @password, @role)";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@id_viajero", id_viajero);
                command.Parameters.AddWithValue("@username", username);
                command.Parameters.AddWithValue("@password", password);
                command.Parameters.AddWithValue("@role", role);
                command.ExecuteNonQuery();
            }
        }

        public LoginModel ObtenerLogin(string username, string password)
        {
            LoginModel loginModel = null;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT id_login, id_viajero, role FROM Login WHERE username = @username AND password = @password";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@username", username);
                command.Parameters.AddWithValue("@password", password);
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        loginModel = new LoginModel
                        {
                            id_login = reader.GetInt32(0),
                            id_viajero = reader.GetInt32(1),
                            role = reader.GetString(2)
                        };
                    }
                }
            }
            return loginModel;
        }
    }
}