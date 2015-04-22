<%@ Page Title="" Language="VB" MasterPageFile="~/Principal.master" AutoEventWireup="false" CodeFile="BajaEmpleado.aspx.vb" Inherits="Administracion_BajaEmpleado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        width: 252px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Baja de Usuario</p>
<table class="auto-style2">
    <tr>
        <td class="auto-style3">Usuario</td>
        <td>
            <asp:DropDownList ID="ddlUsuarios" runat="server" Height="26px" Width="255px">
            </asp:DropDownList>
        </td>
    </tr>
</table>
<p>
    <asp:Button ID="btnElimnar" runat="server" Text="Eliminar usuario" />
</p>
<p>
    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
</p>
<p>
</p>
</asp:Content>

