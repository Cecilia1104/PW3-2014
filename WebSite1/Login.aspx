<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Página sin título</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblContraseña" runat="server" Text="Contraseña:"></asp:Label>
        <asp:TextBox ID="txtContraseña" TextMode="Password" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" PostBackUrl="~/Bienvenido.aspx" />
    </div>
    </form>
</body>
</html>
