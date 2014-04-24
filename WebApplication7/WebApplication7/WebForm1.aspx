<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication7.WebForm1" %>

<%@ Register Src="Nombre.ascx" TagName="Nombre" TagPrefix="uc1" %>
<%@ Register Src="cuit.ascx" TagName="cuit" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:Nombre ID="Nombre1" runat="server" />
        <br />
        Ingrese CUIT:
        <uc2:cuit ID="cuit1" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="Enviar" onclick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
