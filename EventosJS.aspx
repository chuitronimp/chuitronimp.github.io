<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventosJS.aspx.cs" Inherits="aspClase.EventosJS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>

    <!-- <script src="miLibreria.js"></script> -->

    <script type="text/javascript">


        // ========================================================================
        // EJEMPLO DE FUNCION AL CARGAR LA PAGINA CON window.onload
        
        window.onload = function () {

            // MENSAJE AL CARGAR LA PAGINA
            alert("window.onload");

            // ========================================================================
            // EJEMPLO OnMouseOver y OnMouseOut AL CARGAR LA PAGINA CON window.onload
            document.getElementById("inp_MouseOver").onmouseover = function () {
                this.value = "On Mouse Over";
            }

            document.getElementById("inp_MouseOver").onmouseout = function () {
                this.value = "On Mouse Out";
            }

            
            // ========================================================================
            // AGREGAR FUNCION AL CARGAR LA PAGINA
            if (navigator.appName == "Microsoft Internet Explorer") {
                alert("Microsoft Internet Explorer");
                document.getElementById("inp_AgregaEvento").attachEvent("onclick", agregaEvento);
            }
            else {
                alert("Otros Navegadores diferentes de Ms Internet Explorer");
                document.getElementById("inp_AgregaEvento").addEventListener('click', agregaEvento, false);
            }
            document.getElementById("div_AgregaEvento").innerHTML = "Se ha agregado el Event";

            // ========================================================================================
            // CARGA DINAMICA DE FUNCIONES DESDE LOAD true false arriba abajo document object model DOM
            if (navigator.appName == "Microsoft Internet Explorer")
                document.getElementById("inp_Dinamico").attachEvent("onclick", function () { alert('Add Dinámica attachEvent()'); });
            else
                document.getElementById("inp_Dinamico").addEventListener('click', function () { alert('Add Dinámica addEventListener()'); }, false);
            document.getElementById("div_Dinamico").innerHTML = "Se ha agregado el Event Dinámico";

            // ========================================================================================
            // ELIMINA EVENTOS
            document.getElementById("inp_Mensaje").onmouseover = funMensaje;



        }

        function agregaEvento() {
            alert("Agregar código aquí");
            return false;
        }

        // ========================================================================================
        // FUNCION AL CARGAR LA PAGINA DESDE BODY <body onload="cargar()">
        function cargar() {
            if (navigator.appName == "Microsoft Internet Explorer") {
                alert("Microsoft Internet Explorer");
            }
            else {
                alert("Otros Navegadores diferentes de Ms Internet Explorer");
            }
        }

        // ========================================================================================
        // ELIMINA EVENTOS
        function eliminaEventos() {
            document.getElementById("inp_Mensaje").onmouseover = null;
            document.getElementById("div_EliminaEvento").innerHTML = "Evento eliminado de este botón";
        }

        // ========================================================================================
        // EVENTOS
        function funMensaje() {
            document.getElementById("div_EliminaEvento").innerHTML = "Mensaje desde evento que se va a eliminar";
        }

        function funEventos(strArg) {
            alert(strArg);
        }

        function checkKeyDown(key) {
            if (event.shiftKey) {
                alert('Usted oprimio ShiftKey');
            }
            else {
                alert('otra Key down');
            }
        }

        function checkKeyUp(key) {
            if (event.shiftKey) {
                alert('Usted solto ShiftKey');
            }
            else {
                alert('otra Key up');
            }
        }



























    </script>

<!--<body onload="cargar()">-->
<body>
    <form id="form1" runat="server">
        <div>

            <div><h2>Evento desde window.onload</h2>
            </div>
            <br />

            <div><h2>OnMouseOver y OnMouseOut</h2>
                <input id="inp_MouseOver" type="button" value="Ejemplo de Evento" />
            </div>
            <br /><br />

            <div><h2>Agregar Evento attachEvent() Internet Explorer o EventListener()</h2>
                <!--<input id="inp_AddDom" type="button" value="Add to DOM" onclick="return cargaDinamica()" />-->
                <div id="div_AgregaEvento"></div>
                <br />
                <input id="inp_AgregaEvento" type="button" value="Agrega Evento" />
            </div>
            <br /><br />

            <div><h2>Agregar Evento Dinámico attachEvent() Internet Explorer o EventListener()</h2>
                <div id="div_Dinamico"></div>
                <br />
                <input id="inp_Dinamico" type="button" value="Dinámico" />
            </div>
            <br /><br />

            <div><h2>Eliminar deattachEvent() o removeEventListener()</h2>
                <input id="inp_EliminaEvento" type="button" value="Elimina Evento" onclick="return eliminaEventos()" />
                <br />
                <input id="inp_Mensaje" type="button" value="Mensaje" />
                <br />
                <div id="div_EliminaEvento"></div>
            </div>
            <br /><br />

            <div>
                <div id="div_Eventos">Probando Eventos</div>
                <a>Evento OnBlur():</a><input id="txt_eventoOnBlur" type="text" placeholder="Al perder el foco" onblur="return funEventos('Evento onblur()')" />
                <br />
                <a>Evento OnKeyPress():</a><input id="txt_eventoOnKeyChange" type="text" placeholder="Presiono tecla alfa-numerica" onkeypress ="return funEventos('Evento onkeypress()')" />
                <br />
                <a>Evento OnKeyDown():</a><input id="txt_eventoOnKeyDown" type="text" placeholder="Presiono cualquier tecla" onkeydown ="return checkKeyDown(event.key)" />
                <br />
                <a>Evento OnKeyUp():</a><input id="txt_eventoOnKeyUp" type="text" placeholder="Suelta cualquier tecla" onkeyup ="return checkKeyUp(event.key)" />
                <br />
                <a>Evento Drag & Drop():</a><input id="txt_" type="text" placeholder="Suelta cualquier tecla"  ondrop ="return checkOnDragEnter(event.key)" />
                <br />
            </div>
            <br /><br />



        </div>
    </form>
</body>
</html>
