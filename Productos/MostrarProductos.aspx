<%@ Page Title="" Language="VB" MasterPageFile="~/Principal.master" AutoEventWireup="false" CodeFile="MostrarProductos.aspx.vb" Inherits="Productos_MostrarProductos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Lista de Productos</p>
    <p>
        &nbsp;</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="nombre" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." Height="165px" Width="668px">
        <Columns>
            <asp:BoundField DataField="nombre" HeaderText="Nombre" ReadOnly="True" SortExpression="nombre" />
            <asp:BoundField DataField="categoria" HeaderText="Categoria" SortExpression="categoria" />
            <asp:BoundField DataField="descripcion" HeaderText="Descripcion" SortExpression="descripcion" />
            <asp:BoundField DataField="costo" HeaderText="Costo" SortExpression="costo" />
            <asp:BoundField DataField="image" HeaderText="Imagen" SortExpression="image" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FacturaciónConnectionString1 %>" DeleteCommand="DELETE FROM [Productos] WHERE [nombre] = @nombre" InsertCommand="INSERT INTO [Productos] ([nombre], [categoria], [descripcion], [costo], [image]) VALUES (@nombre, @categoria, @descripcion, @costo, @image)" ProviderName="<%$ ConnectionStrings:FacturaciónConnectionString1.ProviderName %>" SelectCommand="SELECT [nombre], [categoria], [descripcion], [costo], [image] FROM [Productos]" UpdateCommand="UPDATE [Productos] SET [categoria] = @categoria, [descripcion] = @descripcion, [costo] = @costo, [image] = @image WHERE [nombre] = @nombre">
        <DeleteParameters>
            <asp:Parameter Name="nombre" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="categoria" Type="String" />
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="costo" Type="Double" />
            <asp:Parameter Name="image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="categoria" Type="String" />
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="costo" Type="Double" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="nombre" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </p>
<p>
</p>
</asp:Content>

