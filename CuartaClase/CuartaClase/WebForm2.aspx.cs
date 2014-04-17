using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CuartaClase
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Text = "Hola";
                CargarCategorias();
                //Label nombre = (Label)NombreApellidoUc.FindControl("lbl");
                Control ctl = NombreUc.FindControl("lbl");
                Control ctrol = ApellidoUc.FindControl("lbl");


            }
        }

        private void CargarCategorias()
        {
            ddlCategorias.Items.Add(new ListItem("Producto", "1"));
            ddlCategorias.Items.Add(new ListItem("Ventas", "2"));
            ddlCategorias.Items.Add(new ListItem("Costos", "3"));

        }


        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
    }
}