<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="productos.aspx.cs" Inherits="Tienda.productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <h2>Productos</h2>
    <hr />
    <h3>GridView</h3>
    <asp:GridView id="gvDatos" runat="server"></asp:GridView>

    <h3>Repeater</h3>
    <asp:Repeater id="rpDatos" runat="server">
        <ItemTemplate>
            <label><%#Eval("nombre") %></label>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
