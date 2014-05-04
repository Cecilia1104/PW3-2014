using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validaciones
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string experiencia = args.Value.ToLower();
            if (experiencia.IndexOf("despedido") != -1)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Label1.Text = "<h3>Formulario completado correctamente!!</h3>";
            }
        }
    }
}
