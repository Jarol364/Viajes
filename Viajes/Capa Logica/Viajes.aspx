<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Viajes.aspx.cs" Inherits="Viajes.Capa_Logica.Viajes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblViajero" runat="server" Text="Viajero:" />
<asp:DropDownList ID="ddlViajero" runat="server">
    
</asp:DropDownList>

<asp:Label ID="lblFechaSalida" runat="server" Text="Fecha de Salida:" />
<asp:TextBox ID="txtFechaSalida" runat="server" />

<asp:Label ID="lblFechaRegreso" runat="server" Text="Fecha de Regreso:" />
<asp:TextBox ID="txtFechaRegreso" runat="server" />

<asp:Label ID="lblDestino" runat="server" Text="Destino:" />
<asp:TextBox ID="txtDestino" runat="server" />

<asp:Button ID="btnRegistrarViaje" runat="server" Text="Registrar Viaje" OnClick="btnRegistrarViaje_Click" />

<asp:GridView ID="gvViajes" runat="server">
</asp:GridView>

        </div>
    </form>
</body>
</html>
