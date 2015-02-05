<%@ Page Title="" Language="VB" MasterPageFile="~/Principal.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Cuentas_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="auto-style2">
    Inicio de Sesion</h3>
<p>
    <asp:Login ID="Login1" runat="server" CreateUserText="Registrarse" CreateUserUrl="~/Cuentas/CrearUsuario.aspx" PasswordRecoveryText="Recuperar Contraseña" PasswordRecoveryUrl="~/Cuentas/RecuperarPass.aspx">
    </asp:Login>
    </p>
</asp:Content>

