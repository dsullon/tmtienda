using System;
using System.Data.SqlClient;
using System.Data;

namespace Tienda
{
    public partial class productos : System.Web.UI.Page
    {
        //string strConexion = "Server=(local); Database=Tienda; User=nombre; password=clave";
        string strConexion = "Server=(local); Database=Tienda; Integrated Security=true";
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarDatos();
        }

        void cargarDatos()
        {
            using(var conexion = new SqlConnection(strConexion))
            {
                using(var command = new SqlCommand("Select IdProducto AS Id, Nombre, Marca, " +
                    "Precio AS PrecioProducto " +
                    "From producto", conexion))
                {
                    var ds = new DataSet();
                    var da = new SqlDataAdapter(command);
                    da.Fill(ds);

                    gvDatos.DataSource = ds;
                    gvDatos.DataBind();

                    rpDatos.DataSource = ds;
                    rpDatos.DataBind();
                }
            }
        }
    }
}