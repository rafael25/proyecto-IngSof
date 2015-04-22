
Partial Class Productos_ModificarProducto
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim productosTableAdapter As New CADSIGA.DSSIGATableAdapters.ProductosTableAdapter
            ddlProductos.DataSource = productosTableAdapter.GetData
            ddlProductos.DataTextField = "nombre"
            ddlProductos.DataValueField = "nombre"
            ddlProductos.DataBind()

            Dim producto As CADSIGA.Producto = CADSIGA.Producto.buscar(ddlProductos.SelectedItem.Value)

            txtNombre.Text = producto.nombre
            txtDescripcion.Text = producto.descripcion
            txtCosto.Text = producto.costo
            ddlCategoria.SelectedValue = producto.categiria
        End If
    End Sub

    Protected Sub ddlProductos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlProductos.SelectedIndexChanged
        Dim producto As CADSIGA.Producto = CADSIGA.Producto.buscar(ddlProductos.SelectedItem.Value)

        txtNombre.Text = producto.nombre
        txtDescripcion.Text = producto.descripcion
        txtCosto.Text = producto.costo
        ddlCategoria.SelectedValue = producto.categiria

        lblMensaje.Text = ""
    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        Dim producto As CADSIGA.Producto = CADSIGA.Producto.buscar(ddlProductos.SelectedItem.Value)

        If txtNombre.Text = "" Or txtDescripcion.Text = "" Or ddlCategoria.SelectedIndex = -1 Then
            lblMensaje.Text = "Todos los datos son requeridos"
        End If

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

        producto.descripcion = txtDescripcion.Text
        producto.categiria = ddlCategoria.SelectedValue

        producto.guardar()

        lblMensaje.Text = "Registro modificado"
    End Sub
End Class
