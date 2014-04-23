<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true"
    CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication6.WebForm4" %>

<asp:Content ContentPlaceHolderID="ContentSecundaria" runat="server">
    Desde este Content(ver id) se llama al de la Master Page Anidada, y desde ella al
    content de la Master Page principal.
    <br />
</asp:Content>
