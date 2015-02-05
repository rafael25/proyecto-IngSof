<%@ Page Title="" Language="VB" MasterPageFile="~/Principal.master" AutoEventWireup="false" CodeFile="RecuperarPass.aspx.vb" Inherits="Cuentas_RecuperarPass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Recuperar</p>
    <p>
        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
            <MailDefinition BodyFileName="~/Cuentas/Email.txt" From="rafaelvb25@gmail.com" Subject="Recuperacion de contraseña">
            </MailDefinition>
        </asp:PasswordRecovery>
    </p>
</asp:Content>

