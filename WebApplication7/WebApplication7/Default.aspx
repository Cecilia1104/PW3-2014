<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApplication7._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        ASP.NET
    </h2>
    <p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="GrupoForm"  ControlToValidate="TextBox1" runat="server" ErrorMessage="*Campo obligatorio"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" ValidationGroup="GrupoForm"  runat="server" 
            Text="Button" onclick="Button1_Click" />
    </p>
   
</asp:Content>
