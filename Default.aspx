<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="aspClase.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h2>Lado del Cliente</h2>
            <br />
            <div>
                <input id="btnGetElementById" type="button" value="Elemento Document" onclick="document.location.href='../getElementByID.aspx'" />
                <br />
                <input id="btnStorage" type="button" value="Client Storage" onclick="document.location.href='../formConceptos.aspx'" />
                <br />
                <input id="btnEventos" type="button" value="Eventos" onclick="document.location.href='../EventosJS.aspx'" />
                <br />
                <input id="btnDragDrop" type="button" value="Drag and Drop" onclick="document.location.href='../formDragDrop.aspx'" />
                <br />
                <input id="btnModalSimple" type="button" value="Ventana Modal Simple" onclick="document.location.href='../formTestSimple.aspx'" />
                <br />
                <input id="btnAbreArchivo" type="button" value="Abre Archivo" onclick="document.location.href='../formaAbreArchivo.aspx'" />
                <br />
                <input id="btnCookies" type="button" value="Cookies" onclick="document.location.href='../formCookies.aspx'" />
                <br />
            </div>
            <br />

            <h2>Lado del Servidor</h2>
            <br />
            <div>
                <input id="btnCSharp" type="button" value="C Sharp" onclick="document.location.href='../formaCSharp.aspx'" />
                <br />
            </div>


        </div>
    </form>
</body>
</html>
