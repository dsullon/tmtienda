<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Tienda._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <h2>Nuestros Servicios</h2>
    <div class="servicios">
        <!--Inicio servicio-->
        <div class="servicio">
            <h3>Diseño Web</h3>
            <div class="servicio_icono">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-brand-html5" width="52" height="52" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ff8e01" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path d="M20 4l-2 14.5l-6 2l-6 -2l-2 -14.5z" />
                    <path d="M15.5 8h-7l.5 4h6l-.5 3.5l-2.5 .75l-2.5 -.75l-.1 -.5" />
                </svg>
            </div>
            <p>
                Diseñamos experiencias consitentes entre la totalidad
                        de dispositivos y activos. Conoce, diseña y mejora la
                        experiencia de tus usuarios.
            </p>
        </div>
        <!--Fin servicio-->
        <!--Inicio servicio-->
        <div class="servicio">
            <h3>Aplicaciones Web</h3>
            <div class="servicio_icono">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-brand-android" width="52" height="52" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ff8e01" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <line x1="4" y1="10" x2="4" y2="16" />
                    <line x1="20" y1="10" x2="20" y2="16" />
                    <path d="M7 9h10v8a1 1 0 0 1 -1 1h-8a1 1 0 0 1 -1 -1v-8a5 5 0 0 1 10 0" />
                    <line x1="8" y1="3" x2="9" y2="5" />
                    <line x1="16" y1="3" x2="15" y2="5" />
                    <line x1="9" y1="18" x2="9" y2="21" />
                    <line x1="15" y1="18" x2="15" y2="21" />
                </svg>
            </div>
            <p>
                Diseño de aplicaciones web completamente administrable
                        con óptima distribución de contenido.
            </p>
        </div>
        <!--Fin servicio-->

        <!--Inicio servicio-->
        <div class="servicio">
            <h3>E-Commerce</h3>
            <div class="servicio_icono">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-building-store" width="52" height="52" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ff8e01" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <line x1="3" y1="21" x2="21" y2="21" />
                    <path d="M3 7v1a3 3 0 0 0 6 0v-1m0 1a3 3 0 0 0 6 0v-1m0 1a3 3 0 0 0 6 0v-1h-18l2 -4h14l2 4" />
                    <line x1="5" y1="21" x2="5" y2="10.85" />
                    <line x1="19" y1="21" x2="19" y2="10.85" />
                    <path d="M9 21v-4a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v4" />
                </svg>
            </div>
            <p>
                Abre tu tienda al mundo. Vende tus productos fácilmente por internet. 
                        Adaptable a todos los rubros.
            </p>
        </div>
        <!--Fin servicio-->

        <div class="servicio">
            <h3>Consultoria</h3>
            <div class="servicio_icono">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-shield-checkered" width="52" height="52" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ff8e01" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path d="M12 3a12 12 0 0 0 8.5 3a12 12 0 0 1 -8.5 15a12 12 0 0 1 -8.5 -15a12 12 0 0 0 8.5 -3" />
                    <path d="M12 3v18" />
                    <path d="M3.5 12h17" />
                </svg>
            </div>
            <p>
                Consultoria sobre temas de Analítica de datos e Inteligencia de Negocios.
            </p>
        </div>
    </div>
</asp:Content>
