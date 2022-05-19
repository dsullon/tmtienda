<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="producto_crear.aspx.cs" Inherits="Tienda.producto_crear" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <h2>Nuevo Producto</h2>
    <fieldset>
        <legend>Datos del producto</legend>
        <label for="txtNombre">Nombre:</label>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>

        <label for="txtMarca">Marca:</label>
        <asp:TextBox ID="txtMarca" runat="server"></asp:TextBox>

        <label for="txtPrecio">Precio:</label>
        <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>

        <label for="txtStock">Stock</label>
        <asp:TextBox ID="txtSctock" runat="server"></asp:TextBox>

        <label for="ddlCategoria">Categoría</label>
        <asp:DropDownList ID="ddlCategoria" runat="server">
            <asp:ListItem Text="--Seleccione--" Value=""></asp:ListItem>
        </asp:DropDownList>

        <label for="fuFoto">Foto</label>
        <asp:FileUpload ID="fuFoto" runat="server" />

        <label for="txtObservacion">Observaciones:</label>
        <asp:TextBox ID="txtObservacion" TextMode="MultiLine" runat="server"></asp:TextBox>

        <asp:Button CssClass="boton" ID="btnGrabar" runat="server" 
            Text="Registrar" OnClick="registrar" />
    </fieldset>
</asp:Content>
