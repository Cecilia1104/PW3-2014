<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Validaciones._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h1>
      Formulario con validaciones:
    </h1>
    <p>
        <asp:Label ID="lbltitular" runat="server" Text="Nombre del titular:"></asp:Label>
        <asp:TextBox ID="txttitular" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txttitular" runat="server" ForeColor="Red" ErrorMessage="*Campo obligatorio" ValidationGroup="datos"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Ingresar solo letras" ForeColor="Red" ValidationExpression="^[A-Za-z]*$" ValidationGroup="datos" ControlToValidate="txttitular"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="lbldni" runat="server" Text="DNI:"></asp:Label>
        <asp:TextBox ID="txtdni" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtdni" ErrorMessage="*Campo obligatorio" ForeColor="Red" ValidationGroup="datos"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtdni" ValidationGroup="datos" runat="server" ForeColor="Red" ErrorMessage="Debe ser numerico" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="lblrepetirdni" runat="server" Text="Repetir DNI:"></asp:Label>
        <asp:TextBox ID="txtrepetirdni" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtrepetirdni" ErrorMessage="*Campo obligatorio" ForeColor="Red" ValidationGroup="datos"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" ControlToCompare="txtdni" ControlToValidate="txtrepetirdni" ValidationGroup="datos" runat="server" ForeColor="Red" ErrorMessage="Deben ser iguales"></asp:CompareValidator>
        <br />
        <asp:Label ID="lblfecha" runat="server" Text="Fecha de nacimiento:"></asp:Label>
        <asp:TextBox ID="txtfecha" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtfecha" ValidationGroup="datos" runat="server" ForeColor="Red" ErrorMessage="*Campo obligatorio"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtfecha" Type="Date" MinimumValue="01/01/1900" ForeColor="Red" MaximumValue="01/05/1996" ValidationGroup="datos"  ErrorMessage="Debe ser mayor de edad"></asp:RangeValidator>
       <br />
        <asp:Label ID="lblcopias" runat="server" Text="Ingrese el numero de copias:"></asp:Label>
        <asp:DropDownList ID="ddlcopias" runat="server">
        <asp:ListItem Text="Debe seleccionar una opcion" Value=""></asp:ListItem>
        <asp:ListItem Text="ninguna" Value="0"></asp:ListItem>
        <asp:ListItem Text="1" Value="1"></asp:ListItem>
        <asp:ListItem Text="2" Value="2"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="ddlcopias" runat="server" ErrorMessage="*Campo obligatorio" ForeColor="Red" InitialValue="" ValidationGroup="datos"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblcomentario" runat="server" Text="Comentario:"></asp:Label>
        <asp:TextBox ID="txtcomentario" TextMode="MultiLine" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ControlToValidate="txtcomentario" ValidationGroup="datos" ValidateEmptyText="true"  ClientValidationFunction="valExperiencia" 
            ErrorMessage="No debe ser despedido" onservervalidate="CustomValidator1_ServerValidate" ForeColor="Red"></asp:CustomValidator>
        <br /><br />
        <asp:Button ID="btn" runat="server" Text="Enviar" ValidationGroup="datos"
            onclick="btn_Click" />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label><%--Campo para mensaje del Page.IsValid--%>
    </p>
    
</asp:Content>
