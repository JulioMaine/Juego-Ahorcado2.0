<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Prueba_Ahorcado.Default" %>

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
        <asp:ScriptManager runat="server" ID="ScriptManager"></asp:ScriptManager>
        <asp:UpdatePanel runat="server" ID="update">
            <ContentTemplate>
                <div class="d-flex justify-content-center flex-column align-items-center" style="height: 500px">
                    <div class="d-flex flex-row container-fluid justify-content-between ancho">
                        <asp:Label ID="lblTime" CssClass="fw-bold" runat="server" Text="Time: 10"></asp:Label>
                        <asp:Label ID="lblScore" runat="server" CssClass="fw-bold" Text="">Score: <%:Score %></asp:Label>
                        <asp:Timer ID="Timer1" Interval="1000" OnTick="Timer1_Tick" runat="server"></asp:Timer>
                    </div>
                    <div>
                        <asp:Label ID="lblIntentos" runat="server" Text="">Intentos: <%:Intentos%>/7</asp:Label>
                    </div>
                    <div class="mb-4">
                        <asp:Label ID="lblPalabra" CssClass="fs-1" runat="server" Text=""></asp:Label>
                    </div>
                    <div>
                        <p>
                            <asp:Button ID="btnA" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="A" />
                            <asp:Button ID="btnB" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="B" />
                            <asp:Button ID="btnC" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="C" />
                            <asp:Button ID="btnD" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="D" />
                            <asp:Button ID="btnE" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="E" />
                            <asp:Button ID="btnF" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="F" />
                            <asp:Button ID="btnG" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="G" />
                            <asp:Button ID="btnH" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="H" />
                            <asp:Button ID="btnI" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="I" />
                            <asp:Button ID="btnJ" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="J" />
                            <asp:Button ID="btnK" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="K" />
                            <asp:Button ID="btnL" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="L" />
                            <asp:Button ID="btnM" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="M" />
                            <asp:Button ID="btnN" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="N" />
                        </p>
                        <p>
                            <asp:Button ID="btnO" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="O" />
                            <asp:Button ID="btnP" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="P" />
                            <asp:Button ID="btnQ" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="Q" />
                            <asp:Button ID="btnR" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="R" />
                            <asp:Button ID="btnS" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="S" />
                            <asp:Button ID="btnT" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="T" />
                            <asp:Button ID="btnU" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="U" />
                            <asp:Button ID="btnV" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="V" />
                            <asp:Button ID="btnW" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="W" />
                            <asp:Button ID="btnX" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="X" />
                            <asp:Button ID="btnY" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="Y" />
                            <asp:Button ID="btnZ" runat="server" CssClass="btn btn-secondary" OnClick="btn_Click" Text="Z" />
                        </p>
                    </div>
                    <asp:Label ID="lblPrueba" runat="server" Text=""></asp:Label>
                    <asp:Label ID="lblCorrecto" runat="server" Text=""></asp:Label>
                    <asp:Button ID="btnSiguiente" runat="server" CssClass="btn btn-success" OnClick="btnSiguiente_Click" Text="Siguiente palabra" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
