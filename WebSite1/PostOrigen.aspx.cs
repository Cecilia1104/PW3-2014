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

public partial class PostOrigen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    public string Nombre
    {
        get 
        {
            return txtNombre.Text;
        }
    }
    protected void btnTransfer_Click(object sender, EventArgs e)
    {
        Server.Transfer("PostDestino.aspx");
    }
}
