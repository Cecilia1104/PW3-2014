using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class cuit : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string Cuit
        {
            get { return string.Format("{0}-{1}-{2}", TextBox1.Text, TextBox2.Text, TextBox3.Text); }
        }
    }
}