<%@ Page Title="" Language="VB" MasterPageFile="~/Principal.master" AutoEventWireup="false" CodeFile="Clientes.aspx.vb" Inherits="Mantenimientos_Clientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 729px;
        }
        .auto-style3 {
        }
        .auto-style4 {
        width: 182px;
        text-align: right;
    }
        .auto-style5 {
            font-size: large;
        }
    .auto-style6 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Clientes</p>
    <table class="auto-style2" align="center">
        <tr>
            <td class="auto-style4">Id. Cliente:</td>
            <td>
                <asp:TextBox ID="txtCliente" runat="server" MaxLength="20" Width="159px"></asp:TextBox>
                *</td>
        </tr>
        <tr>
            <td class="auto-style4">Nombre(s):</td>
            <td>
                <asp:TextBox ID="txtNombres" runat="server" MaxLength="30" Width="314px"></asp:TextBox>
                *</td>
        </tr>
        <tr>
            <td class="auto-style4">Apellido(s):</td>
            <td>
                <asp:TextBox ID="txtApellidos" runat="server" MaxLength="30" Width="314px"></asp:TextBox>
                *</td>
        </tr>
        <tr>
            <td class="auto-style4">Dirección:</td>
            <td>
                <asp:TextBox ID="txtDireccion" runat="server" MaxLength="50" Width="314px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Teléfono:</td>
            <td>
                <asp:TextBox ID="txtTelefono" runat="server" MaxLength="20" Width="314px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Correo:</td>
            <td>
                <asp:TextBox ID="txtCorreo" runat="server" MaxLength="50" Width="314px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Fecha de Nacimiento:</td>
            <td>
                <asp:Calendar ID="clnFechaNac" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Credito: $</td>
            <td>
                <asp:TextBox ID="txtCredito" runat="server" Width="159px"></asp:TextBox>
                *</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">* Campos obligatorios</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:Label ID="lblMensaje" runat="server" style="font-weight: 700"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">
                <asp:Button ID="btnConsultar" runat="server" Text="Consultar" CssClass="boton" />
                <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" CssClass="boton" />
                <asp:Button ID="btnModificar" runat="server" Text="Modificar" CssClass="boton" />
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="boton" />
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" CssClass="boton" />
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="grdClientes" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idCliente" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField HeaderText="Operaciones" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="idCliente" HeaderText="ID" ReadOnly="True" SortExpression="idCliente" />
                <asp:BoundField DataField="nombres" HeaderText="Nombres" SortExpression="nombres" />
                <asp:BoundField DataField="apellidos" HeaderText="Apellidos" SortExpression="apellidos" />
                <asp:BoundField DataField="direccion" HeaderText="Dirección" SortExpression="direccion" />
                <asp:BoundField DataField="telefono" HeaderText="Teléfono" SortExpression="telefono" />
                <asp:BoundField DataField="correo" HeaderText="Correo" SortExpression="correo" />
                <asp:BoundField DataField="fechaNac" HeaderText="Fecha de Nacimiento" SortExpression="fechaNac" />
                <asp:BoundField DataField="credito" DataFormatString="${0:#,#0.00}" HeaderText="Crédito" SortExpression="credito">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FacturaciónConnectionString1 %>" DeleteCommand="DELETE FROM [Cliente] WHERE [idCliente] = @idCliente" InsertCommand="INSERT INTO [Cliente] ([idCliente], [nombres], [apellidos], [direccion], [telefono], [correo], [fechaNac], [credito]) VALUES (@idCliente, @nombres, @apellidos, @direccion, @telefono, @correo, @fechaNac, @credito)" ProviderName="<%$ ConnectionStrings:FacturaciónConnectionString1.ProviderName %>" SelectCommand="SELECT [idCliente], [nombres], [apellidos], [direccion], [telefono], [correo], [fechaNac], [credito] FROM [Cliente]" UpdateCommand="UPDATE [Cliente] SET [nombres] = @nombres, [apellidos] = @apellidos, [direccion] = @direccion, [telefono] = @telefono, [correo] = @correo, [fechaNac] = @fechaNac, [credito] = @credito WHERE [idCliente] = @idCliente">
            <DeleteParameters>
                <asp:Parameter Name="idCliente" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="idCliente" Type="String" />
                <asp:Parameter Name="nombres" Type="String" />
                <asp:Parameter Name="apellidos" Type="String" />
                <asp:Parameter Name="direccion" Type="String" />
                <asp:Parameter Name="telefono" Type="String" />
                <asp:Parameter Name="correo" Type="String" />
                <asp:Parameter DbType="Date" Name="fechaNac" />
                <asp:Parameter Name="credito" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombres" Type="String" />
                <asp:Parameter Name="apellidos" Type="String" />
                <asp:Parameter Name="direccion" Type="String" />
                <asp:Parameter Name="telefono" Type="String" />
                <asp:Parameter Name="correo" Type="String" />
                <asp:Parameter DbType="Date" Name="fechaNac" />
                <asp:Parameter Name="credito" Type="Decimal" />
                <asp:Parameter Name="idCliente" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

