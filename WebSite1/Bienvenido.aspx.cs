using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Bienvenido : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //lblBienvenido.Text = Request.QueryString["u"];
        if (Page.PreviousPage != null && IsCrossPagePostBack)
        {
            //TextBox txtUsuario = Page.PreviousPage.Nombre;
        }
        
    }
    
}
