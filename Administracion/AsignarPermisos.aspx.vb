
Partial Class Administracion_AsignarPermisos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            ddlUsuario.DataSource = Membership.GetAllUsers
            ddlUsuario.DataBind()
            ObtenerRoles()
        End If
    End Sub

    Private Sub ObtenerRoles()
        lstAsignados.Items.Clear()
        lstNoAsignados.Items.Clear()

        lstAsignados.DataSource = Roles.GetRolesForUser(ddlUsuario.Text)
        lstAsignados.DataBind()

        lstNoAsignados.DataSource = Roles.GetAllRoles
        lstNoAsignados.DataBind()

        Dim num As Integer = lstAsignados.Items.Count
        Dim numRoles As Integer = lstNoAsignados.Items.Count

        Dim j, i As Integer

        For j = 0 To num - 1
            If lstNoAsignados.Items.Contains(lstAsignados.Items(j)) Then
                i = lstNoAsignados.Items.IndexOf(lstAsignados.Items(j))
                lstNoAsignados.Items.RemoveAt(i)
            End If
        Next
    End Sub

    Protected Sub ddlUsuario_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlUsuario.SelectedIndexChanged
        ObtenerRoles()
    End Sub

    Protected Sub btnAgregarUno_Click(sender As Object, e As EventArgs) Handles btnAgregarUno.Click
        If Not IsNothing(lstNoAsignados.SelectedItem) Then
            Roles.AddUserToRole(ddlUsuario.Text, lstNoAsignados.SelectedItem.ToString)
            ObtenerRoles()
        End If
    End Sub

    Protected Sub btnQuitarUno_Click(sender As Object, e As EventArgs) Handles btnQuitarUno.Click
        If Not IsNothing(lstAsignados.SelectedItem) Then
            Roles.RemoveUserFromRole(ddlUsuario.Text, lstAsignados.SelectedItem.ToString)
            ObtenerRoles()
        End If
    End Sub

    Protected Sub btnAgregarTodos_Click(sender As Object, e As EventArgs) Handles btnAgregarTodos.Click
        Dim numRoles As Integer = lstNoAsignados.Items.Count
        Dim j As Integer
        For j = 0 To numRoles - 1
            Roles.AddUserToRole(ddlUsuario.Text, lstNoAsignados.Items(j).ToString)
        Next
        ObtenerRoles()
    End Sub

    Protected Sub btnQuitarTodos_Click(sender As Object, e As EventArgs) Handles btnQuitarTodos.Click
        Dim numRoles As Integer = lstAsignados.Items.Count
        Dim j As Integer
        For j = 0 To numRoles - 1
            Roles.RemoveUserFromRole(ddlUsuario.Text, lstAsignados.Items(j).ToString)
        Next
        ObtenerRoles()
    End Sub
End Class
