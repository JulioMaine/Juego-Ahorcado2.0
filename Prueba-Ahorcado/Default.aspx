<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Prueba_Ahorcado.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="style.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <title>Juego del ahorcado</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="d-flex justify-content-center flex-column align-items-center" style="height:500px;" >
            <h1>REGLAS:</h1>
            <asp:Label ID="lblReglas" runat="server" CssClass="text-start h6" Text="Reglas: " style="width:500px;">
                El juego inicia con el contador en 90 segundos, cada vez que resuelvas una palabra se le descontará 10 segundos, Ejemplo: <br />
                La primera palabra tendrá 90 segundos, la segunda 80 segundos, la tercera 70 segundos y así sucesivamente. <br /> <br />
                Cada palabra que resuelvas sumará puntos, la puntuación se irá acumulando de acuerdo a los intentos que no hayas usado, Ejemplo: <br />
                Adivinaste una palabra usando 4 de los 7 intentos, entonces se te sumarán 3 puntos.
            </asp:Label>
            <a href="Juego.aspx" class="btn btn-success">Jugar</a>
        </div>
    </form>
</body>
</html>
