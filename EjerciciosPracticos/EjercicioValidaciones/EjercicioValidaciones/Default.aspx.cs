using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EjercicioValidaciones
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblExito.Text = "<h2>Formulario completado correctamente</h2>";
            }

        }
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string nombre = args.Value.ToLower();
            if (nombre.IndexOf("miguel perez") != -1)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void btningresar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var ID = Session.SessionID;
                Session["usuario"] = txtusu.Text;
                Response.Redirect("bienvenido.aspx");
            }
        }
    }
}



