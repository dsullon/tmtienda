using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Tienda
{
    public partial class producto_crear : System.Web.UI.Page
    {
        string strConexion = "Server=(Local); Database=Tienda; Integrated Security=true";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                cargarDatos();
            }
        }

        void cargarDatos()
        {
            using (var conexion = new SqlConnection(strConexion))
            {
                using (var command = new SqlCommand("Select * From Categoria", conexion))
                {
                    conexion.Open();
                    var reader = command.ExecuteReader();
                    if (reader != null && reader.HasRows)
                    {
                        ListItem item;
                        while (reader.Read())
                        {
                            item = new ListItem();
                            item.Text = reader["Nombre"].ToString();
                            item.Value = reader["IdCategoria"].ToString();
                            ddlCategoria.Items.Add(item);
                        }

                    }
                }
            }
        }

        protected void registrar(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string marca = txtMarca.Text;
            string precio = txtPrecio.Text;
            string stock = txtSctock.Text;
            string observacion = txtObservacion.Text;
            string foto = "/assets/images/productos/generico.png";
            string categoria = ddlCategoria.SelectedValue;
            string archivoImagen = Path.GetFileName(fuFoto.PostedFile.FileName);
            if (!string.IsNullOrEmpty(archivoImagen))
            {
                foto = "/assets/images/productos/" + archivoImagen;
                fuFoto.SaveAs(Server.MapPath("~/assets/images/productos/") + archivoImagen);
            }
            if (string.IsNullOrEmpty(categoria))
            {
                //Mostrar Mensaje
            }

            using (var conexion = new SqlConnection(strConexion))
            {
                var sql = "Insert Into Producto(Nombre, Marca, Precio, Stock, " +
                        "Observacion, Foto, IdCategoria) " +
                        "Values(@nombre, @marca, @precio, @stock, @observacion, " +
                        "@foto, @categoria)";

                using (var command = new SqlCommand(sql, conexion))
                {                    
                    command.Parameters.AddWithValue("@nombre", nombre);
                    command.Parameters.AddWithValue("@marca", marca);
                    command.Parameters.AddWithValue("@precio", precio);
                    command.Parameters.AddWithValue("@stock", stock);
                    command.Parameters.AddWithValue("@observacion", observacion);
                    command.Parameters.AddWithValue("@foto", foto);
                    command.Parameters.AddWithValue("@categoria", categoria);
                    conexion.Open();
                    int filas = command.ExecuteNonQuery();
                    if (filas > 0)
                    {
                        var script = "alert('Producto registrado');" +
                            "window.location='productos.aspx'";
                        ScriptManager.RegisterStartupScript(this, this.GetType(),
                            "mensaje", script, true);

                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(),
                            "mensaje", "alert(No se ha podido registrar el producto)", true);
                    }
                }
            }
        }
    }
}