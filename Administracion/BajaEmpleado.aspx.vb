
Partial Class Administracion_BajaEmpleado
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            actualizarUsuarios()
        End If
    End Sub

    Protected Sub btnElimnar_Click(sender As Object, e As EventArgs) Handles btnElimnar.Click
        Dim usuario As String = ddlUsuarios.SelectedValue
        Membership.DeleteUser(usuario)
        lblMensaje.Text = "Usuario " + usuario + " eliminado"
        actualizarUsuarios()
    End Sub

    Private Sub actualizarUsuarios()
        ddlUsuarios.DataSource = Membership.GetAllUsers
        ddlUsuarios.DataBind()
    End Sub
End Class
