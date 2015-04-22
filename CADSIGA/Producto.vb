Imports CADSIGA.DSSIGATableAdapters

Public Class Producto
    Private tableAdapter As New ProductosTableAdapter

    Public nombre As String
    Public costo As Double
    Public categiria As String
    Public descripcion As String
    Public imagen As String

    Sub New()
    End Sub

    Sub New(nombre As String)
        'Constructor
    End Sub

    Public Function alta() As Boolean
        tableAdapter.Insert(Me.nombre, Me.categiria, Me.descripcion, Me.costo, Me.imagen)
        Return True
    End Function

    Public Sub baja()
        tableAdapter.EliminarProducto(Me.nombre)
    End Sub

    Public Function guardar() As Boolean
        tableAdapter.ActualizarProducto(Me.categiria, Me.descripcion, Me.costo, Me.imagen, Me.nombre)
        Return True
    End Function

    Public Shared Function buscar(nombre As String) As Producto
        Dim tableAdapter As New ProductosTableAdapter
        Dim registro As DSSIGA.ProductosDataTable = tableAdapter.ObtenerProducto(nombre)

        Dim producto As New Producto
        producto.nombre = registro(0)("nombre").ToString
        producto.costo = registro(0)("costo").ToString
        producto.categiria = registro(0)("categoria").ToString
        producto.descripcion = registro(0)("descripcion").ToString
        producto.imagen = registro(0)("image").ToString

        Return producto
    End Function

    Public Shared Function buscarTodos() As ArrayList
        Dim tableAdapter As New ProductosTableAdapter
        Dim productos As New ArrayList
        Dim tabla As DSSIGA.ProductosDataTable = tableAdapter.GetData()

        For Each row As DataRow In tabla.Rows
            Dim producto As New Producto
            producto.nombre = row("nombre").ToString
            producto.costo = row("costo").ToString
            producto.categiria = row("categoria").ToString
            producto.descripcion = row("descripcion").ToString
            producto.imagen = row("image").ToString

            productos.Add(producto)
        Next

        Return productos
    End Function

    Public Function existe() As Boolean
        If tableAdapter.ExisteProducto(Me.nombre) Then
            Return True
        Else
            Return False
        End If
    End Function
End Class
