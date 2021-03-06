﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Principal.master" AutoEventWireup="false" CodeFile="ModificarProducto.aspx.vb" Inherits="Productos_ModificarProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        width: 246px;
    }
        .auto-style4 {
            width: 245px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Modificar Producto</p>
    <table class="auto-style2">
        <tr>
            <td class="auto-style4">Selecciona producto a modificar</td>
            <td>
    <asp:DropDownList ID="ddlProductos" runat="server" AutoPostBack="True" Height="26px" Width="295px">
    </asp:DropDownList>
                <br />
            </td>
        </tr>
    </table>
    <p></p>
<table class="auto-style2">
    <tr>
        <td class="auto-style3">Nombre</td>
        <td>
            <asp:TextBox ID="txtNombre" runat="server" Width="292px" Enabled="False"></asp:TextBox>
        &nbsp;*</td>
    </tr>
    <tr>
        <td class="auto-style3">Categoria</td>
        <td>
            <asp:DropDownList ID="ddlCategoria" runat="server" Height="23px" Width="297px">
                <asp:ListItem>Arbustos</asp:ListItem>
                <asp:ListItem>Aromaticas</asp:ListItem>
                <asp:ListItem>Planta con flor</asp:ListItem>
                <asp:ListItem>Plantas de colgar</asp:ListItem>
                <asp:ListItem>Plantas de exterior</asp:ListItem>
                <asp:ListItem>Plantas de huerta</asp:ListItem>
                <asp:ListItem>Plantas de interior</asp:ListItem>
                <asp:ListItem>Plantas de temporada</asp:ListItem>
            </asp:DropDownList>
        &nbsp;*</td>
    </tr>
    <tr>
        <td class="auto-style3">Descripcion</td>
        <td>
            <asp:TextBox ID="txtDescripcion" runat="server" MaxLength="50" Rows="3" TextMode="MultiLine" Width="292px"></asp:TextBox>
        &nbsp;*</td>
    </tr>
    <tr>
        <td class="auto-style3">Costo</td>
        <td>
            <asp:TextBox ID="txtCosto" runat="server" Width="292px"></asp:TextBox>
        &nbsp;*</td>
    </tr>
    <tr>
        <td class="auto-style3">Imagen</td>
        <td>
            <asp:FileUpload ID="fuImagen" runat="server" />
        &nbsp;*</td>
    </tr>
</table>
<p>
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar Cambios" />
</p>
    <p>
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
</p>
    <p>
        * Campos requeridos</p>
<p>
</p>
</asp:Content>

