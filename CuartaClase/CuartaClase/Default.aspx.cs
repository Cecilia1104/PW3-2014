using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CuartaClase
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //cargar_paises();
                cargar_paises2();
            }
        }

        private void cargar_paises()
        {
            ddlPaises.Items.Clear();
            ddlPaises.Items.Add("Arg");
            ddlPaises.Items.Add("Bolivia");
        }
        protected void btnguardar_Click(object sender, EventArgs e)
        {
            labelColorElegido.Text = txtColor.Text + " " + ddlPaises.SelectedItem.Text;
        }
        protected void ddlpaises_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void cargar_paises2()
        {
            List<String> items = new List<string>();
            items.Add("Holanda");
            items.Add("Italia");
            ddlPaises.DataSource = items;
            ddlPaises.DataBind();
        }
    }
}
