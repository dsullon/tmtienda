<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="producto.aspx.cs" Inherits="Tienda.producto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <h2>Editar Producto</h2>
    <fieldset>
        <legend>Datos del producto</legend>
        <label for="txtNombre">Nombre:</label>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>

        <label for="txtMarca">Marca:</label>
        <asp:TextBox ID="txtMarca" runat="server"></asp:TextBox>

        <label for="txtPrecio">Precio:</label>
        <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>

        <label for="txtObservacion">Observaciones:</label>
        <asp:TextBox ID="txtObservacion" TextMode="MultiLine" runat="server"></asp:TextBox>

        <asp:Button CssClass="boton" ID="btnGrabar" runat="server" Text="Actualizar" />
    </fieldset>
</asp:Content>
