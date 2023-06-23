<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formConceptos.aspx.cs" Inherits="aspNetFramework.formConceptos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>

    <script type="text/javascript">
    </script>


    <script type="text/javascript">

        window.onload = function () {

            function funMensaje() {
                mensaje = "Variable Global"
            }
            funMensaje();
            //alert(mensaje);

            function funOS() {

                if ("credentials" in navigator) {
                    navigator.credentials.get({ password: true }).then((creds) => {
                        alert("credenciales")
                    });
                } else {
                    alert("else")
                }

                alert("Platform: " + navigator.platform + "\n"
                    + "Version: " + navigator.appVersion + "\n"
                    + "Name: " + navigator.appName + "\n"
                    + "Cookie: " +navigator.cookieEnabled + "\n"
                    + "Credentials: " + navigator.credentials)
            }
            //funOS()


            function funGuardaCliente() {
                if (typeof (Storage) !== 'undefined') {
                    // LOCAL STORAGE
                    localStorage.setItem("escuela", "UPMH")
                    localStorage.Campus="Tolcayuca"
                    let miEscuela = localStorage.getItem("escuela")
                    alert("Escuela: " + miEscuela + "\n"
                            + "Campus: " + localStorage.Campus)

                    // SESSION STORAGE
                    sessionStorage.setItem("usuario", "Alumno")
                    sessionStorage.Password="pwd"
                    let miUsuario = sessionStorage.getItem("usuario")

                    alert("Usuario: " + miUsuario + "\n"
                        + "Password: " + sessionStorage.Password)
                } else {
                    // NO SE PUEDE USAR STORAGE
                }
            }
            //funGuardaCliente()

            function funEliminaDatos() {
                localStorage.removeItem('Campus')
                alert("Escuela: " + localStorage.escuela)
                alert("Campus: " + localStorage.Campus)
            }
            //funEliminaDatos()

            function funEliminaTodo() {
                localStorage.clear()
                sessionStorage.clear()
                alert("Escuela: " + localStorage.Campus +
                    "\nUsuario: " + sessionStorage.Password)
            }
            //funEliminaDatos()

            function funRedirigir() {
                document.location.href = 'https://www.google.com';
            }
            //funRedirigir()

            function funCaracteresEscape() {
                alert("Comilla simple \´ \n"
                    + "Comilla doble \" \n"
                    + "Slash \\ \n"
                    + "Nueva linea \\n \n"
                    + "Tab H \\t \n"
                    + "Tab V \\v \n"
                    + "Salto pag. \\f \n"
                    + "Retorno de carro \\r \n"
                    + "Retroceso \\b")

            }
            //funCaracteresEscape()

            function funTipoDe() {
                var intA = 0
                alert(typeof(intA))
            }
            //funTipoDe()

            function funTry() {
                try {
                    alert(miVariable)
                }
                catch (exp) {
                    alert("Error")
                }
                finally{
                    alert("siempre hace")
                }
            }
            //funTry()

            function funBlur() {
                var myDiv = document.getElementById("divBlur");
                myDiv.hidden=false
            }
            //funBlur()

            var myForm = document.getElementById("form1");
            myForm.addEventListener("focus", function (event) {
                event.target.style.background = "green";
            }, true);
            myForm.addEventListener("blur", function (event) {
                event.target.style.background = "";
            }, true);





        }

    </script>

<body>
    <form id="form1" runat="server">
        <div><p>Hola Mundo</p></div>

        <div id="divBlur" hidden="hidden">
            <input type="text" placeholder="user">
            <input type="password" placeholder="password">
        </div>
    </form>
</body>
</html>
