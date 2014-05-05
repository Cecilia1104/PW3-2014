using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EjercicioMasterPages
{
    public partial class _404 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            TextBox tx = Page.Master.FindControl("txt") as TextBox; //Asi se acceden a las propiedades del control que esta en la master
            tx.Visible = false; //Lo oculto
            Button bu = Page.Master.FindControl("btn") as Button;
            bu.Visible = false;

        }
    }
}