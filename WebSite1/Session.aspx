<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Session.aspx.cs" Inherits="Session" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Página sin título</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Label ID="lblUsuario" runat="server" Text="Nuevo Usuario"></asp:Label>
        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblGuardado" runat="server" Text="Usuario guardado:"></asp:Label>
        <asp:TextBox ID="txtGuardado" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblTodos" runat="server" Text="Todos los usuarios:"></asp:Label>
        <asp:TextBox ID="txtTodos" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar sesion" OnClick="btnGuardar_Click" />
        <asp:Button ID="btnLeer" runat="server" Text="Leer sesion" OnClick="btnLeer_Click" />
        <asp:Button ID="btnAgregar" runat="server" Text="Agregar Usuario Session" OnClick="btnAgregar_Click" />
    </div>
    </form>
</body>
</html>
