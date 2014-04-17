<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CuartaClase.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mismo ejemplo con controles web</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <select id="Select1" runat="server"/>
            <option value="1">Argentina</option>
            <option value="2">Uruguay</option>
        </select>
        <br />
        <input id="Text1" type="text" runat="server" />
        <br />
        <span></span>
        <input id="Submit1" type="submit" runat="server" value="Enviar"/>
    </div>
    </form>
</body>
</html>
