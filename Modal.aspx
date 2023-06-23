<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modal.aspx.cs" Inherits="aspNetFramework.Modal" %>

<!DOCTYPE html>




<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link href="styles/modalStyle.css" rel="stylesheet" type="text/css" />

    <!--
    <style type="text/css">
        .modal {
            background-color: blue;
        }
    </style>
        -->

</head>

    <script src="Scripts/scriptModal.js" type="text/javascript"></script>

    <script type="text/javascript">

        /*
        window.onload = function () {
            //const cte_Mod = document.querySelector("h2");
            const cte_Mod = document.querySelector('.modal');
            alert(cte_Mod);
        }
        */

    </script>

<body>
    <form id="form1" runat="server" method="dialog" >
        <div>

            <!--<h2>HOLA</h2>-->


<section class="modal hidden">
  <div class="flex">
    <img src="https://imagen.jpg" width="50px" height="50px" alt="user" />
    <button class="btn-close">⨉</button>
  </div>
  <div>
    <h3>Muestra ventana.</h3>
    <p>
      Ventana Modal.
    </p>
  </div>

  <input type="email" id="email" placeholder="email@hotmail.com" />
  <button class="btn">Click Aquí</button>
</section>

<div class="overlay hidden"></div>
<button class="btn btn-open">Abre Modal</button>





        </div>
    </form>
</body>
</html>


