<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formCookies.aspx.cs" Inherits="aspNetFramework.formCookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>

    <script type="text/javascript">

        /*
        window.onload = function () {
            if (navigator.cookieEnabled == true) {
                alert("El uso de cookies está activado");

                //document.cookie = "miCookie1=juan; expires=Mon, 25 May 2024 11:12:13 UTC; path=/";
                //document.cookie = "miCookie2=557; expires=Mon, 25 May 2024 11:12:13 UTC; path=/";

                document.cookie = "miCookie1=nombre_1; expires=Mon, 25 May 2024 11:12:13 UTC; path=/";
                document.cookie = "miCookie2=nombre_2; expires=Mon, 25 May 2024 11:12:13 UTC; path=/";
                document.cookie = "miCookie3=nombre_3; expires=Mon, 25 May 2024 11:12:13 UTC; path=/";

                // OBTENEMOS VALOR DE UNA:
                var valor = leerCookie("miCookie2");
                if (valor != undefined)
                    document.write("<p>Valor de 'miCookie2' es [" + valor + "]</p>");
                else
                    alert("<p>No existe Cookie.</p>");


            }
            else {
                alert("El uso de cookies está desactivado");
            }
        }

        function leerCookies() {
            var misCookies = document.cookie;
            document.write("Cookies: [" + misCookies + "]");
        }

        function leerCookie(nombre_cookie) {
            // SPLIT DE COOKIES
            var aCookies = document.cookie.split(";");

            var contador;
            var posicionSignoIgual;
            var nombreCookie;
            var valorCookie;
            for (contador = 0; contador < aCookies.length; contador++) {
                posicionSignoIgual = aCookies[contador].indexOf("=");
                nombreCookie = aCookies[contador].substring(0, posicionSignoIgual).replace(" ", "");
                if (nombreCookie == nombre_cookie) {
                    valorCookie = aCookies[contador].substring(posicionSignoIgual + 1);
                }
            }
            return valorCookie;
        }*/

    </script>


<body>
    <form id="form1" runat="server">
        <div>
            <h2>Crear y Borrar Cookies</h2>
            <input id="btn_CrearCookieTmp" type="button" value="Crear Cookie Temporal" />
            <input id="btn_BorrarCookieTmp" type="button" value="Borrar Cookie Temporal" />
            
            <h2>Crear y Leer Cookies</h2>
            <input id="btn_CrearCookie" type="button" value="Crear Cookie" />
            <input id="btn_BorrarCookie" type="button" value="Borrar Cookie" />

            <h2>Ver Cookies</h2>
            <input id="btn_VerCookies" type="button" value="Ver Cookies" />

            <script type='text/javascript'>

                document.getElementById('btn_CrearCookieTmp').addEventListener("click", funCrearCookie)
                document.getElementById('btn_BorrarCookieTmp').addEventListener("click", funBorrarCookie)
                document.getElementById('btn_CrearCookie').addEventListener("click", funCrearCookie)
                document.getElementById('btn_BorrarCookie').addEventListener("click", funBorrarCookie)
                document.getElementById('btn_VerCookies').addEventListener("click", funVerCookie)

                function funCrearCookie(e) {
                    if (!e) e = window.event; // PARA MICROSOFT EXPLORER

                    var floatOperacion = 24 * 60 * 60 * 1000;
                    var fecha = new Date();
                    fecha.setTime(fecha.getTime() + 5 * floatOperacion)

                    if (e.target.id == "btn_CrearCookieTmp")
                        document.cookie = "varTemporal=miTemporal;" + " expires=" + fecha.toUTCString() + "; path=/";
                    else if (e.target.id == "btn_CrearCookie")
                        document.cookie = "varCookie=miCookie;" + " expires=" + fecha.toUTCString() + "; path=/";
                }

                function funBorrarCookie(e) {
                    if (!e) e = window.event; // PARA MICROSOFT EXPLORER

                    if (e.target.id == "btn_BorrarCookieTmp")
                        document.cookie = "varTemporal=;expires=Thu, 01 Jan 1970 00:00:00 UTC;"
                    else if (e.target.id == "btn_BorrarCookie") {
                        document.cookie = "varCookie=;expires=Thu, 01 Jan 1970 00:00:00 UTC;"
                    }
                }

                function funVerCookie() {
                    alert(document.cookie)
                }

            </script>

        </div>
    </form>
</body>
</html>
