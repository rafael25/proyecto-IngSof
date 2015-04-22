<%@ Page Title="" Language="VB" MasterPageFile="~/Principal.master" AutoEventWireup="false" CodeFile="BajaProducto.aspx.vb" Inherits="Productos_BajaProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Baja de Producto</p>
<p>
    <asp:DropDownList ID="ddlProductos" runat="server">
    </asp:DropDownList>
</p>
<p>
    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" UseSubmitBehavior="False" />
</p>
<p>
    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
</p>
<p>
</p>
</asp:Content>

