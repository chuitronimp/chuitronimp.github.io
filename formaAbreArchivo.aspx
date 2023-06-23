<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formaAbreArchivo.aspx.cs" Inherits="aspNetFramework.formaAbreArchivo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>

    <script type='text/javascript'>

        function abrirArchivo(evento) {
            var archivo = evento.target.files[0]
            if (archivo) {
                try {
                    var reader = new FileReader()
                    reader.onload = function ( e ) {
                        var txt_Texto = e.target.result
                        document.getElementById("id_texto").innerText = txt_Texto
                    }
                    reader.readAsText(archivo)
                }
                catch {
                    alert("Error")
                }

            }
            else {
                document.getElementById('id_Mensaje').innerText="Error"
            }
        }

        window.addEventListener('load', () => { document.getElementById('archivoTexto').addEventListener('change',abrirArchivo) });

    </script>



<body>
    <form id="form1" runat="server" method="post" action="#" enctype="multipart/form-data">
        <div>

            <div>
                <input id="archivoTexto" type="file" /> <!-- multiple -->
                <p id="id_Mensaje"></p>
                <textarea id="id_texto" cols="100" rows="20"></textarea>
                <br />
            </div>
            <br />

            <div>
                <input id="archivoImagen" type="file" accept="image/*" /> <!-- multiple -->
                <br />
                <img id="id_imagen" src="../avatarDefault.png" alt="Robalo" />
            </div>
        </div>
    </form>
</body>


    <script type='text/javascript'>

        const archivo = document.getElementById('archivoImagen')
        const img = document.getElementById('id_imagen')

        archivo.addEventListener('change', e => {
            if (e.target.files[0]) {
                const reader = new FileReader()
                reader.onload = function (e) {
                    img.src = e.target.result
                }
                reader.readAsDataURL(e.target.files[0])
            }
            else {
                img.src ="../imgError.png"
            }
        })

    </script>


</html>
