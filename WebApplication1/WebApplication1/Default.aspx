<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Primera aplicacion web - Segunda Clase (09/04/2014)
    </h2>
    <p>
        <asp:TextBox ID="txtIngresar" runat="server" placeholder="Ingrese su nombre"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIngresar"
            ErrorMessage="*Campo obligatorio"></asp:RequiredFieldValidator>
        <br />
        <asp:DropDownList ID="ddlPaises" runat="server" OnSelectedIndexChanged="ddlPaises_SelectedIndexChanged" AutoPostBack="true"><%--Detalle del AutoPostTrue--%>
            <asp:ListItem Text="Seleccionar" Value="0">Seleccione una opcion</asp:ListItem>
            <asp:ListItem Text="Argentina" Value="1">Argentina</asp:ListItem>
            <asp:ListItem Text="Brasil" Value="2">Brasil</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddlProvincias" Visible="false" runat="server" OnSelectedIndexChanged="ddlProvincias_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        Eliga una fecha:
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
        <br />
        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
        <br />
        Los datos elegidos son:
        <asp:Label ID="lblTexto" CssClass="bold" runat="server" Text=""></asp:Label>
    </p>
</asp:Content>
