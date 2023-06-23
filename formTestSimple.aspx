<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formTestSimple.aspx.cs" Inherits="aspClase.formTestSimple" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

        <style type="text/css">

		.modalContainer {
			display: none; 
			position: fixed; 
			z-index: 1;
			padding-top: 100px;
			left: 0;
			top: 0;
			width: 100%;
			height: 100%; 
			overflow: auto; 
			background-color: rgb(0,0,0);
			background-color: rgba(0,0,0,0.4);
		}

		.modalContainer .modal-content {
			background-color: #fefefe;
			margin: auto;
			padding: 20px;
			border: 1px solid lightgray;
			border-top: 10px solid #58abb7;
			width: 60%;
		}

		.modalContainer .close {
			color: #aaaaaa;
			float: right;
			font-size: 28px;
			font-weight: bold;
		}

		.modalContainer .close:hover,
		.modalContainer .close:focus {
			color: #000;
			text-decoration: none;
			cursor: pointer;
		}

        </style>


</head>

        <script type="text/javascript">

			// NOTA
			// EN CASO DE COLOCARLO EN EL BODY IRA SIN window.onload = function ()
			window.onload = function () {

				if (document.getElementById("btnModal")) {
                    var modal = document.getElementById("divModal");
					var btn = document.getElementById("btnModal");
					var span = document.getElementsByClassName("close")[0];

					btn.onclick = function () {
						modal.style.display = "block";
					}

					span.onclick = function () {
						modal.style.display = "none";
					}

					window.onclick = function (event) {
						if (event.target == modal) {
							modal.style.display = "none";
						}
					}
				}
			}
        </script>


<body>
    <form id="form1" runat="server" method="dialog" >
        <div>


		<div>Abrir Ventana Modal</div>
		<button id="btnModal">Abrir modal</button>

		<div id="divModal" class="modalContainer">
			<div class="modal-content">
				<span class="close">&times;</span>
				<h2>Modal</h2>
				<p>Ventana modal</p>
			</div>
		</div>

        </div>
    </form>

</body>
</html>
