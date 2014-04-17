<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="CuartaClase.WebForm2" %>
<%@ Register Src="~/WebUserControl1.ascx" TagName="MiControl" TagPrefix="mc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:DropDownList ID="ddlCategorias" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
            AutoPostBack="true">
        </asp:DropDownList>
        <br />
        <br />
        User Control:<br />
        Nombre:
        <mc:MiControl ID="NombreUc" runat="server" />
        Apellido:
        <mc:MiControl ID="ApellidoUc" runat="server" />
        <br />
        
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
