<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EntradaySalida.aspx.cs" Inherits="Viajes.Capa_Logica.EntradaySalida" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblViajeroEntrada" runat="server" Text="Viajero:" />
<asp:DropDownList ID="ddlViajeroEntrada" runat="server">
  
</asp:DropDownList>

<asp:Label ID="lblFechaEntrada" runat="server" Text="Fecha de Entrada:" />
<asp:TextBox ID="txtFechaEntrada" runat="server" />

<asp:Label ID="lblLugarEntrada" runat="server" Text="Lugar de Entrada:" />
<asp:TextBox ID="txtLugarEntrada" runat="server" />

<asp:Button ID="btnRegistrarEntrada" runat="server" Text="Registrar Entrada" OnClick="btnRegistrarEntrada_Click" />

<asp:Label ID="lblViajeroSalida" runat="server" Text="Viajero:" />
<asp:DropDownList ID="ddlViajeroSalida" runat="server">
</asp:DropDownList>

<asp:Label ID="lblFechaSalida" runat="server" Text="Fecha de Salida:" />
<asp:TextBox ID="txtFechaSalida" runat="server" />

<asp:Label ID="lblLugarSalida" runat="server" Text="Lugar de Salida:" />
<asp:TextBox ID="txtLugarSalida" runat="server" />

<asp:Button ID="btnRegistrarSalida" runat="server" Text="Registrar Salida" OnClick="btnRegistrarSalida_Click" />

<asp:GridView ID="gvEntradasSalidas" runat="server">
  
</asp:GridView>

        </div>
    </form>
</body>
</html>
