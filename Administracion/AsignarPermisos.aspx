<%@ Page Title="" Language="VB" MasterPageFile="~/Principal.master" AutoEventWireup="false" CodeFile="AsignarPermisos.aspx.vb" Inherits="Administracion_AsignarPermisos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Asignar permisos</p>
    <table cellspacing="0" class="auto-style2">
        <tr>
            <td colspan="3" style="text-align: center">Usuario:
                <asp:DropDownList ID="ddlUsuario" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 45%">Permisos No Asignados</td>
            <td>&nbsp;</td>
            <td style="width: 45%">Permisos Asignados</td>
        </tr>
        <tr>
            <td rowspan="4">
                <asp:ListBox ID="lstNoAsignados" runat="server" Width="90%"></asp:ListBox>
            </td>
            <td>
                <asp:Button ID="btnAgregarUno" runat="server" Font-Bold="True" Text="&gt;" Width="50px" />
            </td>
            <td rowspan="4">
                <asp:ListBox ID="lstAsignados" runat="server" Width="90%"></asp:ListBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnQuitarUno" runat="server" Font-Bold="True" Text="&lt;" Width="50px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnAgregarTodos" runat="server" Font-Bold="True" Text="&gt;&gt;" Width="50px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnQuitarTodos" runat="server" Font-Bold="True" Text="&lt;&lt;" Width="50px" />
            </td>
        </tr>
    </table>
</asp:Content>

