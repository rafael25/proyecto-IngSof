
Partial Class Productos_AltaProducto
    Inherits System.Web.UI.Page

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        Dim producto As New CADSIGA.Producto

        If txtNombre.Text = "" Or txtDescripcion.Text = "" Or ddlCategoria.SelectedIndex = -1 Then
            lblMensaje.Text = "Todos los datos son requeridos"
        End If

        producto.nombre = txtNombre.Text
        producto.categiria = ddlCategoria.Text
        producto.descripcion = txtDescripcion.Text

        Dim exprecionRegular As New Regex("^[0-9]*\.?[0-9]+$")
        If exprecionRegular.IsMatch(txtCosto.Text) Then
            producto.costo = Val(txtCosto.Text)
        Else
            lblMensaje.Text = "El costo no es un numero correcto"
            Return
        End If

        If fuImagen.HasFile Then
            Dim saveDir As String = "\Imagenes\"
            Dim appPath As String = Request.PhysicalApplicationPath
            Dim savePath As String = appPath + saveDir + Server.HtmlEncode(fuImagen.FileName)

            fuImagen.SaveAs(savePath)
            producto.imagen = savePath
        End If

        If producto.existe Then
            lblMensaje.Text = "El producto con ese nombre ya existe"
            Return
        End If

        If producto.alta() Then
            lblMensaje.Text = "Registro guardado"
        End If
    End Sub
End Class
