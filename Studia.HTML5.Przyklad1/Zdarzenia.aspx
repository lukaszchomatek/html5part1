<!--
    Strona aspx składa się z dwóch plików. Jednym z plików jest plik z widokiem 
    (znacznikami HMTL), drugim z plików jest plik z kodem C#. Na początku pliku
    z widokiem znajduje się nagłówek, który zawiera informacje o języku strony,
    pliku przechowującym kod itd.

    Dalej znajdują się znaczniki HTML. Mogą być one wymieszane ze znacznikami WebForms,
    ponieważ ta technologia posiada własny zestaw znaczników, najczęściej odpowiadających
    znacznikom HTML. Znaczniki WebForms zaczynają się od prefiksu "asp", np. <asp:Label>.
    Znaczniki WebForms należy zawsze stosować na obiektach interaktywnych, po to aby była
    możliwość wiązania danych i obsługi zdarzeń.
    
    W przypadku znaczników spoza WebForms oczywiście również jest możliwa obsługa
    zdarzeń, jednakże tylko przy pomocy JavaScriptu. Znaczniki WebForms z kolei
    w czasie wykonania żądania strony są tłumaczone na znaczniki HTML (ponieważ przeglądarka
    nie jest w stanie renderować strony aspx) a niezbędny kod JavaScript jest dodawany
    "w locie". Nie mniej jednak programista aplikacji internetowych w .NET może
    w ogóle nie dotykać JS, jeśli nie ma takiej potrzeby, bo zrobi to za niego serwer IIS.  
    -->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Zdarzenia.aspx.cs" Inherits="Studia.HTML5.Przyklad1.Zdarzenia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Atrybut runat mówi o tym, że kod aspx ma być przetworzony na serwerze na plik HMTL. -->
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            font-family:Arial, Helvetica, sans-serif;
            width:800px;
        }
    </style>
</head>
    <!-- W przypadku gdy mamy samodzielną stronę aspx, nasze znaczniki wpisujemy do formularza. -->
<body>
    <form id="form1" runat="server">
    <div>
        <p>Strona aspx domyślnie nie zawiera odwołań do żadnych arkuszy css.
            Nie będziemy tego zmieniać, ponieważ ćwiczenie dotyczy obsługi
            zdarzeń. (Można spróbować to zrobić we własnym zakresie kopiując
            konfigurację z <code>Site.Master</code> lub dodając odwołania do plików z folderu
            Content wewnątrz znacznika <code>&lt;head&gt;</code>. Utworzono
            jedynie prosty styl, który ogranicza szerokość strony, żeby łatwiej
            się czytało "lity" tekst.
        </p>
        <p>Przy poznawaniu technologii niezbędne jest zrobienie greetera. :)
        </p>
        <div>
            <asp:TextBox runat="server" ID="whoTextBox">Kogo chcesz przywitać?</asp:TextBox>
            <asp:Button runat="server" ID="greetButton" OnClick="greetButton_Click" Text="Przywitaj"/>
            <asp:Label runat="server" ID="greetResultLabel"></asp:Label>
        </div>

        <p>Warto również spróbować zrobić sobie Kalkulator (najlepiej na kilka sposobów)</p>
        <p>Na początku kalkulator z przyciskami typu radio</p>
        <asp:TextBox runat="server" ID="txtBoxKalkulatorRadioLiczba1" Text="5"></asp:TextBox>
        <asp:TextBox runat="server" ID="txtBoxKalkulatorRadioLiczba2" Text="2"></asp:TextBox>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Selected="True" Text="Dodawanie" Value="+"></asp:ListItem>
            <asp:ListItem Text="Odejmowanie" Value="-"></asp:ListItem>
            <asp:ListItem Text="Mnożenie" Value="*"></asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button runat="server" OnClick="btnObliczRadio_Click" Text="Oblicz"/>
        <asp:Label runat="server" ID="lblWynikRadio" />
        <p>Kalkulator z działaniem wybieranym z listy rozwijanej (ćwiczenie)</p>
        <p>Kalkulator ze znakiem wpisywanym w polu tekstowym (ćwiczenie)</p>
    </div>
    </form>
</body>
</html>
