<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="CuartaClase._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        ASP.NET
    </h2>
   <div>
        <asp:DropDownList ID="ddlPaises" runat="server" OnSelectedIndexChanged="ddlpaises_SelectedIndexChanged">
            <asp:ListItem>Uruguay</asp:ListItem>
            <asp:ListItem>Chile</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="txtColor" runat="server" placeholder="Ingrese nombre"></asp:TextBox>
        <asp:Button runat="server" ID="btnguardar" Text="Guardar" OnClick="btnguardar_Click" />
        <asp:Label ID="labelColorElegido" runat="server"></asp:Label>
    </div>
</asp:Content>
