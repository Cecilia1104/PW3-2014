using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                CargarPaises();
        }

        private void CargarPaises()
        {
            //ddlPaises.Items.Clear();
            ddlPaises.Items.Add("Paraguay");
            ddlPaises.Items.Add("Chile");
        }

        protected void ddlPaises_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlPaises.SelectedIndex == 1)
            {

                ddlProvincias.Visible = true;
                CargarProvincias();

            }
            else
            {
                ddlProvincias.Visible = false;
            }
        }

        private void CargarProvincias()
        {
            ddlProvincias.Items.Clear();
            ddlProvincias.Items.Add("Buenos Aires");
            ddlProvincias.Items.Add("Cordoba");
            ddlProvincias.Items.Add("Salta");
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            lblTexto.Text = txtIngresar.Text;
            if (ddlPaises.SelectedIndex == 1)
            {
                lblTexto.Text = txtIngresar.Text + " " + ddlPaises.SelectedItem + " "+ ddlProvincias.SelectedValue+" "+ Calendar1.SelectedDate.ToShortDateString();

            }
            else
            {
                lblTexto.Text = txtIngresar.Text + " " + ddlPaises.SelectedItem + " " + Calendar1.SelectedDate.ToShortDateString();
            }
        }

        protected void ddlProvincias_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}
