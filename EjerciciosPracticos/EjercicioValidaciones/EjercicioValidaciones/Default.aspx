<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="EjercicioValidaciones._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <h1>
            Formulario de registracion:
        </h1>
        <asp:Label ID="lblusuario" runat="server" Text="Nombre de usuario:"></asp:Label>
        <br />
        <asp:TextBox ID="txtusuario" runat="server" placeholder="nombre apellido"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
            ControlToValidate="txtusuario" ValidationGroup="registracion" Text="*" ErrorMessage="*Campo obligatorio:Nombre de usuario"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lbldni" runat="server" Text="DNI:"></asp:Label>
        <br />
        <asp:TextBox ID="txtdni" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red"
            ControlToValidate="txtdni" ValidationGroup="registracion" Text="*" ErrorMessage="*Campo obligatorio:DNI"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="Red"
            ValidationGroup="registracion" ControlToValidate="txtdni" ValidationExpression="^[0-9]*"
            Text="Error!" ErrorMessage="Solo numeros en DNI"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="lblmail" runat="server" Text="E-mail:"></asp:Label>
        <br />
        <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red"
            runat="server" ControlToValidate="txtmail" ValidationGroup="registracion" Text="Error!"
            ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ErrorMessage="Formato invalido en E-mail"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:DropDownList ID="ddlactividad" runat="server">
            <asp:ListItem Value="" Text="Seleccione su actividad"></asp:ListItem>
            <asp:ListItem Value="0" Text="Estudiante"></asp:ListItem>
            <asp:ListItem Value="1" Text="Comerciante"></asp:ListItem>
            <asp:ListItem Value="2" Text="Desocupado"></asp:ListItem>
            <asp:ListItem Value="3" Text="Otra"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red"
            ControlToValidate="ddlactividad" InitialValue=" " ValidationGroup="registracion"
            Text="*" ErrorMessage="*Campo obligatorio:Actividad"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lbledad" runat="server" Text="Edad:"></asp:Label>
        <br />
        <asp:TextBox ID="txtedad" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtedad"
            ForeColor="Red" Type="Integer" MinimumValue="12" MaximumValue="90" ValidationGroup="registracion"
            Text="Error!" ErrorMessage="Ingrese dos cifras que correspondan a su edad"></asp:RangeValidator>
        <br />
        <br />
        <asp:Label ID="lblcontraseña" runat="server" Text="Contraseña:"></asp:Label>
        <br />
        <asp:TextBox ID="txtcontraseña" TextMode="Password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red"
            ControlToValidate="txtcontraseña" ValidationGroup="registracion" Text="*" ErrorMessage="*Campo obligatorio:Contraseña"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblrepetircontraseña" runat="server" Text="Vuelva a ingresar la contraseña:"></asp:Label>
        <br />
        <asp:TextBox ID="txtrepetircontraseña" TextMode="Password" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" ControlToCompare="txtcontraseña" ForeColor="Red"
            ControlToValidate="txtrepetircontraseña" ValidationGroup="registracion" runat="server"
            Text="Error!" ErrorMessage="No coinciden las contraseñas"></asp:CompareValidator>
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" ShowSummary="true" runat="server"
            HeaderText="Resumen de errores de validación:" DisplayMode="BulletList" ForeColor="Red"
            ValidationGroup="registracion" />
        <asp:Button ID="btn" ForeColor="Blue" runat="server" ValidationGroup="registracion"
            Text="Registrarse" OnClick="btn_Click" />
        <asp:Label ID="lblexito" runat="server" Text=""></asp:Label>
    </div>
    <div>
        <h1>
            Formulario de login:
        </h1>
        <asp:Label ID="lblusu" runat="server" Text="Usuario:"></asp:Label>
        <br />
        <asp:TextBox ID="txtusu" runat="server" placeholder="nombre apellido"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ValidationGroup="login"
            ControlToValidate="txtusu" ValidateEmptyText="true" ClientValidationFunction="valNombre"
            ForeColor="Red" ErrorMessage="No puede logearse con ese nombre" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        <br />
        <br />
        <asp:Label ID="lblcontra" runat="server" Text="Contraseña:"></asp:Label>
        <br />
        <asp:TextBox ID="txtcontra" TextMode="Password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" runat="server"
            ControlToValidate="txtcontra" ValidationGroup="login" ErrorMessage="*Campo obligatorio"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btningresar" runat="server" ForeColor="DarkGreen" ValidationGroup="login"
            Text="Ingresar" OnClick="btningresar_Click" />
    </div>
</asp:Content>
