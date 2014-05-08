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
using System.Collections.Generic;

public partial class Session : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        Session["usuario"] = txtUsuario.Text;
    }
    protected void btnLeer_Click(object sender, EventArgs e)
    {
        txtGuardado.Text = (string)Session["usuario"];
        if (Session["listaUsuarios"] != null)
        {
            List<string> Usuarios = (List<string>)Session["listaUsuarios"];
            foreach (string valor in Usuarios)
            {
                txtTodos.Text += valor + ";";
            }
        }

    }
    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        List<string> usuarios;
        if (Session["listaUsuarios"] == null)
        {
            usuarios = new List<string>();
            usuarios.Add(txtUsuario.Text);
            Session["listaUsuarios"] = usuarios;
        }
        else
        {
            usuarios = (List<string>) Session["listaUsuarios"];
            usuarios.Add(txtUsuario.Text);
        }

    }
}
