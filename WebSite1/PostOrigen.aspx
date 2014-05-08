<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PostOrigen.aspx.cs" Inherits="PostOrigen" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Página sin título</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>
        <br />
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" PostBackUrl="~/PostDestino.aspx" />
        <br /><br />
        <asp:Button ID="btnTransfer" runat="server" Text="Transfer" OnClick="btnTransfer_Click" />
    </div>
    </form>
</body>
</html>
