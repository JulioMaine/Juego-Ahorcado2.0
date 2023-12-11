<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resultado.aspx.cs" Inherits="Prueba_Ahorcado.Resultado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="style.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <title>Juego del ahorcado</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="d-flex justify-content-center flex-column align-items-center" style="height: 150px; margin-top: 80px">
            <asp:Label ID="lblPalabra" runat="server" CssClass="fw-bold" Text=""></asp:Label>
            <asp:Label ID="lblScore" runat="server" CssClass="fw-bold mt-1" Text="">Score: <%:Score %></asp:Label>
            <asp:Label ID="lblNombre" runat="server" CssClass="mt-1" Text="Ingresa tu nombre:"></asp:Label>
            <asp:TextBox ID="txtNombre" CssClass="mt-1 form-control" Style="width: 150px" runat="server"></asp:TextBox>
                <asp:Button ID="btnAgregar" CssClass="btn btn-primary mt-1" OnClick="btnAgregar_Click" runat="server" Text="Aceptar" />
                <a href="Default.aspx" id="btnVolver" runat="server" class="btn btn-success mt-1">Volver a jugar</a>
        </div>
        <div class="container-fluid text-center" style="width: 400px; padding: 30px">
            <asp:GridView ID="dgvRanking" AutoGenerateColumns="false" CssClass="table" runat="server">
                <Columns>
                    <asp:BoundField HeaderText="Jugador" DataField="Nombre" />
                    <asp:BoundField HeaderText="Puntuación" DataField="Puntuacion" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
