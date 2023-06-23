<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formaCSharp.aspx.cs" Inherits="aspClase.formaCSharp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Listas y Tuplas</h2>
            <br />
            <asp:Button ID="btnListas" runat="server" Text="Listas" OnClick="btnListas_Click" />
        </div>
        <div>
            <br />
            <asp:Button ID="btnSortedList" runat="server" Text="Listas Ordenadas" OnClick="btnSortedList_Click" />
        </div>
        <div>
            <br />
            <asp:Button ID="btnChar" runat="server" Text="Tipo Char" OnClick="btnChar_Click" />
        </div>
        <div>
            <br />
            <asp:Button ID="btnEnum" runat="server" Text="Enumeración" OnClick="btnEnum_Click" />
        </div>
        <div>
            <br />
            <asp:Button ID="btnEstructura" runat="server" Text="Estructura" OnClick="btnEstructura_Click" />
        </div>
        <div>
            <br />
            <asp:Button ID="btnTupla" runat="server" Text="Tuplas" OnClick="btnTupla_Click" />
        </div>
        <div>
            <br />
            <asp:Button ID="btnArray" runat="server" Text="Arreglos" OnClick="btnArray_Click" />
        </div>

        <div>
            <h2>Data Table</h2>
            <br />
            <asp:Button ID="btnDataTable" runat="server" Text="Data Table" OnClick="btnDataTable_Click" />
            <br />
            <asp:TextBox ID="txtProducto" runat="server" placeholder="Producto"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtProveedor" runat="server" placeholder="Proveedor"></asp:TextBox>
            <br />
            <asp:Button ID="btnAdd" runat="server" Text="Add Data" OnClick="btnAdd_Click" />
            <br />
            <asp:Button ID="btnGuardaTabla" runat="server" Text="Guarda Table" OnClick="btnGuardaTabla_Click" />
        </div>
        <div>
            <br />
            <asp:TextBox ID="txtMensaje" runat="server" Height="331px" TextMode="MultiLine" Width="753px"></asp:TextBox>
        </div>
        <div>
            <h2>Componentes COM</h2>
            <br />
            <asp:Button ID="btnWord" runat="server" Text="Word" OnClick="btnWord_Click" />
            <br />
            <asp:Button ID="btnExcel" runat="server" Text="Excel" OnClick="btnExcel_Click" />
            <br />
            <asp:Button ID="btnPowerPoint" runat="server" Text="Power Point" OnClick="btnPowerPoint_Click" />
        </div>
    </form>
</body>
</html>
