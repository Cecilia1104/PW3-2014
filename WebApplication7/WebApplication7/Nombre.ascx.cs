using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string MiLabel
        {
            get { return lblNombre.Text; }
            set { lblNombre.Text = value; }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblNombre.Text = DateTime.Now.ToString("dd/mm/yy");
        }

    }

}