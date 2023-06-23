<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formTest.aspx.cs" Inherits="aspNetFramework.formTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style type="text/css">

    body {font-family: Arial, Helvetica, sans-serif;}

    /* Fondo modal: negro con opacidad al 50% */
    .modal {
        display: none; /* Por defecto, estará oculto */
        position: fixed; /* Posición fija */
        z-index: 1; /* Se situará por encima de otros elementos de la página*/
        padding-top: 200px; /* El contenido estará situado a 200px de la parte superior */
        left: 0;
        top: 0;
        width: 100%; /* Ancho completo */
        height: 100%; /* Algura completa */
        overflow: auto; /* Se activará el scroll si es necesario */
        background-color: rgba(0,0,0,0.5); /* Color negro con opacidad del 50% */
    }

    /* Ventana o caja modal */
    .contenido-modal {
        position: relative; /* Relativo con respecto al contenedor -modal- */
        background-color: white;
        margin: auto; /* Centrada */
        padding: 20px;
        width: 60%;
        -webkit-animation-name: animarsuperior;
        -webkit-animation-duration: 0.5s;
        animation-name: animarsuperior;
        animation-duration: 0.5s
    }

    /* Animación */
    @-webkit-keyframes animatetop {
        from {top:-300px; opacity:0} 
        to {top:0; opacity:1}
    }

    @keyframes animarsuperior {
        from {top:-300px; opacity:0}
        to {top:0; opacity:1}
    }

    /* Botón cerrar */
    .close {
        color: black;
        float: right;
        font-size: 30px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
    }

    </style>


</head>

    <script type="text/javascript">

        window.onload = function () {

            var modal = document.getElementById("ventanaModal");
            var boton = document.getElementById("abrirModal");
            var span = document.getElementsByClassName("cerrar")[0];

            boton.addEventListener("click", function () {
                modal.style.display = "block";
            });

            span.addEventListener("click", function () {
                modal.style.display = "none";
            });

            window.addEventListener("click", function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            });

        }

    </script>

<body>
    <form id="form1" runat="server" method="dialog">

        

    <h2>Ventana modal</h2>

    <button id="abrirModal">Abrir Modal</button>

    <!-- Ventana modal, por defecto no visiblel -->
    <div id="ventanaModal" class="modal">
        <div class="contenido-modal">
            <span class="cerrar">&times;</span>
            <h2>Ventana modal</h2>
            <p>Esto es el texto de la ventana</p>
        </div>
    </div>




    </form>
</body>
</html>
