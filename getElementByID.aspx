<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getElementByID.aspx.cs" Inherits="aspClase.getElementByID" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
    <style type="text/css">
        #optOption {
            width: 24px;
        }
    </style>

</head>

    <script src="../miLibreria.js" type="text/javaScript"></script>

    <script type='text/javascript'>

        function saludoInicio() {
            alert("Bienvenido a mi página Web.");
        }

        function funUndefined() {
            var var1;
            var var2 = null;
            alert(var1 == var2);
            alert(var1 === var2);
            return false;
        }

        function funConfirmacion() {
            return confirm('¿Enviar datos?')
        }

        function pedirDato() {
            var valor = prompt("Código de acceso:", "");
            alert(valor);
            return false;
        }

        function manipulaGetDocumentById() {
            //alert("ALERTA");
            document.getElementById("btnGDBID").value = "Manipula Texto";
            document.getElementById("div1").innerHTML =
                "<p style='color:yellow;'>Introduzca los datos</p>";
            return false;
        }

        function manipulaGetElementsByName() {
            document.getElementsByName("nameSubmit")[0].value = "Get Elements By Name";
            return false;
        }

        function manipulaGetElementsByTagName() {
            document.getElementsByTagName("span")[0].hidden = false;
            return false;
        }

        function creaElemento() {
            //alert("creaElemento()");
            var href = document.createElement("a");
            href.id = "href";
            href.innerHTML = "Liga de referencia";
            href.href = "https://www.google.com/";
            href.target = "_blank";
            document.body.appendChild(href);

            return false;
        }

        function manipulaDocumentBody() {

            // QUITA ELCODIGO HTML DE LA PAGINA Y AGREGA EL NUEVO - QUITA LO QUE HABIA
            document.body.innerHTML = "<p id='parrafo1'>Link <a id='enlace' href = 'https://www.google.com' > aquí</a ></p > ";
            return false;
        }

        function manipulaDocumentBodyAdd() {
            // USANDO '+=' SE AÑADE NUEVO CÓDIGO AL EXISTENTE
            document.body.innerHTML += "<p id='parrafo2' >Agregado por medio de script.</p>";
            return false;
        }

        function manipulaModificar() {
            document.getElementById("parrafo2").innerHTML = "Elemento nuevo modificado";
            return false;
        }

        function insertaElemento() {
            var boton = document.createElement("input");
            boton.id = "botonInsertado";
            boton.type = "button";
            boton.value = "Botón Insertado";
            boton.onclick = function () {
                window.location.href = "http://www.google.com/";
            }
            document.getElementById("insertar").appendChild(boton);

            return false;
       }

        function insertarPadre() {
            var divBefore = document.createElement("div");
            divBefore.id = "divBefore";
            divBefore.style.backgroundColor = "red";
            divBefore.innerHTML = "Division Before";
            var div_Papa = document.getElementById("div_insertPadre").parentNode;
            var div_Hijo = document.getElementById("div_insertPadre");
            div_Papa.insertBefore(divBefore, div_Hijo);

            return false;
        }

        function divEliminar() {
            var objEliminar = document.getElementById("divEliminar");
            var objNodoPadre = objEliminar.parentNode;
            objNodoPadre.removeChild(objEliminar);
            return false;
        }

        function tamanioElemento() {
            alert("offsetHeight: " + document.getElementById("spanTamanio").offsetHeight +
            "\noffsetWidth: " + document.getElementById("spanTamanio").offsetWidth);
            return false;
        }



    </script>

    <noscript>Su navegador Web no soporta JavaScript o esta desactivado.</noscript>

<body onload="saludoInicio();">


    <script type="text/javascript">
         <!--
            document.write("JavaScript desde el Body.<br />");
        -->
    </script>


    <form id="form1" runat="server">
        
        <div>


<!--<div hidden="hidden">-->

            <div><h2>Archivo de Js</h2>
                <asp:Button ID="btnArchivoJs" runat="server" Text="Archivo JavaScript" OnClientClick="return funJsFile()" />
            </div>
            <br /><br />

            <div><h2>Tipo Undefined</h2>
                <asp:Button ID="btnUndefinido" runat="server" Text="Undefined" OnClientClick="return funUndefined()" />
            </div>
            <br /><br />

            <div><h2>Confirm</h2>
                <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClientClick="return funConfirmacion()" />
            </div>
            <br /><br />

            <div><h2>Pedir Dato al Usuario</h2>
                <asp:Button ID="btnPedirDato" runat="server" Text="Código de Acceso" OnClientClick="return pedirDato()" />
            </div>
            <br /><br />

            <div><h2>Get Document by Id</h2>
                <asp:Button ID="btnGetDocumentById" runat="server" Text="Get Document By Id" OnClientClick="return manipulaGetDocumentById()" />
                <asp:Button ID="btnGDBID" runat="server" Text="Get Document By Id" />
                <br />
                <div id="div1">Contenido del div.</div>
            </div>
            <br /><br />

            <div><h2>Get Elements by Name</h2>
                <asp:Button ID="btnGetElementsByName" runat="server" Text="Get Elements By Name" OnClientClick="return manipulaGetElementsByName()" />
                <input type="submit" id="btnSubmit" name="nameSubmit" value="Submit" />
            </div>
            <br /><br />

            <div><h2>Get Elements by TagName</h2>
                <asp:Button ID="btnGetElementsByTagName" runat="server" Text="Get Elements By TagName" OnClientClick="return manipulaGetElementsByTagName()" />
                <span hidden="hidden">Contenido de Span</span>
            </div>
            <br /><br />

            <div><h2>CreateElement con Document</h2>
                <asp:Button ID="btnCreateElement" runat="server" Text="Create Element" OnClientClick="return creaElemento()" />
            </div>
            <br /><br />

            <div><h2>Document Body sustituir todo</h2>
                <asp:Button ID="btnDocumentBody" runat="server" Text="Document Body" OnClientClick="return manipulaDocumentBody()" />
            </div>
            <br /><br />

<!--</div>-->

            <div><h2>Document Body Agregar</h2>
                <asp:Button ID="btnDocumentBodyAdd" runat="server" Text="Document Body Add" OnClientClick="return manipulaDocumentBodyAdd()" />
            </div>
            <br /><br />

            <div><h2>Modificar elementos Agregados</h2>
                <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClientClick="return manipulaModificar()" />
            </div>
            <br /><br />

            <div><h2>Insertar elemento Hijo</h2>
                <asp:Button ID="btnInsertar" runat="server" Text="Insertar Elemento" OnClientClick="return insertaElemento()" />
                <div id="insertar"></div>
            </div>
            <br /><br />

            <div id="divPapa"><h2>Insertar Before</h2>
                <asp:Button ID="Button1" runat="server" Text="Insertar Elemento" OnClientClick="return insertarPadre()" />
                <div id="div_insertPadre" >Insertar elemento antes de aquí</div>
            </div>
            <br /><br />

            <div><h2>Eliminar elementos</h2>
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar Elemento" OnClientClick="return divEliminar()" />
                <div id="divEliminar">División Eliminar</div>
            </div>
            <br /><br />

            <div><h2>Tamaño de un Elemento</h2>
                <asp:Button ID="btnTamanio" runat="server" Text="Tamaño de Elemento" OnClientClick="return tamanioElemento()" />
                <span id="spanTamanio" style="background-color:yellow;height:40px;width:100px;">Tamaño de Elemento</span>
            </div>
            <br /><br />

        </div>

    </form>
</body>
</html>
