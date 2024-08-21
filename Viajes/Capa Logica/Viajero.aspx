<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Viajero.aspx.cs" Inherits="Viajes.Capa_Logica.Viajero" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblNombre" runat="server" Text="Nombre:" />
<asp:TextBox ID="txtNombre" runat="server" />

<asp:Label ID="lblApellido" runat="server" Text="Apellido:" />
<asp:TextBox ID="txtApellido" runat="server" />

<asp:Label ID="lblPasaporte" runat="server" Text="Pasaporte:" />
<asp:TextBox ID="txtPasaporte" runat="server" />

<asp:Label ID="lblNacionalidad" runat="server" Text="Nacionalidad:" />
<asp:TextBox ID="txtNacionalidad" runat="server" />

<asp:Button ID="btnRegistrar" runat="server" Text="Registrar Viajero" OnClick="btnRegistrar_Click" />

<asp:GridView ID="gvViajeros" runat="server">
</asp:GridView>

        </div>
    </form>
</body>
</html>
