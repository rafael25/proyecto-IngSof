Imports System.Net.Mail

Partial Class Cuentas_RecuperarPass
    Inherits System.Web.UI.Page

    Protected Sub PasswordRecovery1_SendingMail(sender As Object, e As MailMessageEventArgs) Handles PasswordRecovery1.SendingMail
        Dim mail As New SmtpClient
        mail.EnableSsl = True
        mail.Send(e.Message)
        e.Cancel = True
    End Sub
End Class
