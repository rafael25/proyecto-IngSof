
Partial Class Productos_BajaProducto
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            actualizarProductos()
        End If
    End Sub

    Protected Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        Dim producto As New CADSIGA.Producto

        producto.nombre = ddlProductos.SelectedItem.Value

        If Not producto.existe Then
            lblMensaje.Text = "El producto con es nombre no exixte"
            Return
        End If

        producto.baja()
        lblMensaje.Text = "Producto eliminado"
        actualizarProductos()
    End Sub

    Private Sub actualizarProductos()
        Dim productosTableAdapter As New CADSIGA.DSSIGATableAdapters.ProductosTableAdapter
        ddlProductos.DataSource = productosTableAdapter.GetData
        ddlProductos.DataTextField = "nombre"
        ddlProductos.DataValueField = "nombre"
        ddlProductos.DataBind()
    End Sub
End Class
