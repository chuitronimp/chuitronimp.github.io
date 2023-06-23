<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formDragDrop.aspx.cs" Inherits="aspClase.formDragDrop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <p draggable="true" id="dragtarget">Drag me!</p>
            <br />
            <div class="droptarget">Drop here!</div>
            <br />
            <div id="div_Mensaje"></div>
            <br />

            <!-- <div draggable="true">Esta division</div> -->
            <img src="avatarDefault.png" id="id_Imagen" />
            <br />
            <div id="contenedor"><h1>Contenedor</h1></div>

        </div>
    </form>
</body>


    <script type="text/javascript">

        //// ===========================================================================================
        //// EVENTOS EN EL DRAG

        //document.addEventListener("dragstart", function (event) {
        //    // dragtarget event.target.id
        //    event.dataTransfer.setData("Text", event.target.id);

        //    // MENSAJE
        //    document.getElementById("div_Mensaje").innerHTML = "Comienza el Drag.";

        //    // OPACIDAD
        //    event.target.style.opacity = "0.4";
        //});

        //// MIENTRAS SE HACE EL DRAG
        //document.addEventListener("drag", function (event) {
        //    document.getElementById("div_Mensaje").style.color = "red";
        //});

        //// MENSAJE CUANDO SE FINALICE EL DRAG
        //document.addEventListener("dragend", function (event) {
        //    document.getElementById("div_Mensaje").innerHTML = "Finaliza el drag.";
        //    event.target.style.opacity = "1";
        //});


        //// ===========================================================================================
        //// EVENTOS EN EL DROP

        //// AL ENTRAR EN EL DROP
        //document.addEventListener("dragenter", function (event) {
        //    if (event.target.className == "droptarget") {
        //        event.target.style.border = "3px dotted red";
        //    }
        //});

        //// PERMITE EL DROP
        //document.addEventListener("dragover", function (event) {
        //    event.preventDefault();
        //});

        //// AL SALIR DEL DROP
        //document.addEventListener("dragleave", function (event) {
        //    if (event.target.className == "droptarget") {
        //        event.target.style.border = "";
        //    }
        //});

        //// DROP
        //document.addEventListener("drop", function (event) {
        //    event.preventDefault();
        //    if (event.target.className == "droptarget") {
        //        document.getElementById("div_Mensaje").style.color = "";
        //        event.target.style.border = "";
        //        var data = event.dataTransfer.getData("Text");
        //        event.target.appendChild(document.getElementById(data));
        //    }
        //});


    </script>


    <script type="text/javascript">

        const imagen = document.getElementById('id_Imagen')
        imagen.addEventListener('dragstart', e => { console.log('Inicia Drag') })
        imagen.addEventListener('dragend', e => { console.log('Finaliza Drag') })
        imagen.addEventListener('drag', e => { console.log('Drag') })

        const contenedor = document.getElementById('contenedor')
        contenedor.addEventListener('dragenter', e => { console.log('Drag Enter') })
        contenedor.addEventListener('dragleave', e => { console.log('Drag Leave') })
        contenedor.addEventListener('dragover', e => { e.preventDefault(); console.log('Drag Over') })
        contenedor.addEventListener('drop', e => { console.log('Drop'); contenedor.appendChild(imagen) })

    </script>


</html>
