<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Studia.HTML5.Przyklad1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Wprowadzenie do HTML5 i CSS3</h1>
        <p class="lead">Jest to pierwsza przykładowa aplikacja napisana z wykorzystaniem WebForms.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Co to jest WebForms?</h2>
            <p>
                ASP.NET Web Forms jest technologią, która pozwala na tworzenie dynamicznych stron internetowych,
                 które oparte są na zdarzeniach, podobnie jak ma to miejsce w aplikacjach Windows Forms. Same aplikacje Windows Forms nie były przedmiotem na tych studiach, jednakże model aplikacji jest stosumkowo prosty.</p>
            <p>
                &nbsp;</p>
            <p>
                <a class="btn btn-default" href="https://www.asp.net/web-forms">Więcej &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Jak działa aplikacja internetowa?</h2>
            <p>
                Aplikacja internetowa wymaga do swojego działania serwera. W przypadku aplikacji w .NET
                takim serwerem jest Internet Information Services. Zadaniem serwera jest generowanie
                "w locie" odpowiedzi na żądania klienta (użytkownika). Odpowiedź na żądanie ma postać
                dokumentu HTML, natomiast wysłanie żądania odbywa się poprzez wpisanie w przeglądarce
                adresu strony internetowej lub wykonanie na takiej stronie akcji (np. kliknięcia przycisku).
            </p>
            <p>
                <a class="btn btn-default" href="https://pl.wikipedia.org/wiki/Klient-serwer">Więcej &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Co to jest HTML?</h2>
            <p>
                HTML jest językiem opisu dokumentów. Dokument HTML ma formę tekstową, przy czym
                tekst jest wzbogacony znacznikami. Znaczniki w tekście mają za zadanie go sformatować.

                Inne rodzaje znaczników służą do osadzenia w dokumencie dodatkowych elementów,
                takich jak pola tekstowe, nagłówki, linki itd.
            </p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <h2>Aplikacje internetowe w VS 2015</h2>
            <p>
                Visual Studio 2015 wspiera 3 metody tworzenia aplikacji internetowych na platormie .NET.
            </p>
            <ul>
                <li>WEB Forms</li>
                <li>WEB API</li>
                <li>ASP.NET MVC</li>
            </ul>
            <div class="bs-callout bs-callout-info">
                <p>
                    Pierwsza z wymienionych technologii jest dostępna od bardzo dawna. Oferuje ona klasyczny
                    model obsługi zdarzeń. Powstało w niej bardzo dużo aplikacji, jest dużo dodatkowych
                    kontrolek (elementów do osadzenia na stronie w aplikacji internetowej). 
                </p>
            </div>
            <div class="bs-callout bs-callout-info">
                <p>
                Kolejna z technologii to WEB API. Służy do budowania usług REST.
                    Są to usługi wykorzystujące składnię protokołu HTTP do przesyłania
                    danych.
                </p>
            </div>
            <div class="bs-callout bs-callout-info">
                <p>
                Ostatnia technologia służy do budowy aplikacji z wykorzystaniem
                    wzorca MVC. 
                </p>
            </div>
        </div>
        <div class="col-md-6">
            <h2>Jak stworzyć aplikację internetową?</h2>
            <ol>
                <li><code>File->New->Project...</code></li>
                <li>Wybieramy <code>Web</code>, dalej <code>ASP.NET Web Application</code>,
                     wpisujemy nazwę i wciskamy OK.</li>
                <li>Wybieramy technologię, spośród Web API, Web Forms, ASP.NET MVC</li>
            </ol>
            Efektem powyższych akcji będzie zbudowana aplikacja internetowa, którą można
            z menu <code>Debug</code> lub przy pomocy ikony (jak zwykłą aplikację).
            
            <h2>Dlaczego Web Forms?</h2>
            <p>
                W tematyce związanej z HMTL5 wykorzystałem Web Forms ze względu na niską
                "barierę wejścia" i względnie intuicyjny sposób obsługi zdarzeń. W Web Forms
                dostępna jest większość mechanizmów dostępnych w ASP.NET MVC.
            </p>
        </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <h2>Jak wygląda przykładowy dokument HMTL5?</h2>
                <pre>
&lt;!DOCTYPE html&gt;
&lt;html&gt;
  &lt;body&gt;
    &lt;h1&gt;Witaj świecie&lt;/h1&gt;
    &lt;p&gt;Oto moja pierwsza strona internetowa!!!.&lt;/p&gt;
  &lt;/body&gt;
&lt;/&lt;html&gt;
                </pre>
            </div>
            <div class="col-md-6">
                <h2>Gdzie znajdę dobre materiały do nauki HTML5?</h2>
                <p>
                    Całkiem niezły kurs znajduje się na stronie W3C. Materiały są w języku
                    angielskim. Każdy przykład można szybko uruchomić w przeglądarce i zmienić
                    kawałek kodu, żeby zobaczyć jak działa.
                </p>
                <p>
                <a class="btn btn-default" href="https://www.w3schools.com/html/html_basic.asp">Więcej &raquo;</a>
            </p>
                <p>
                    Proponuję obejrzeć dostępne na podanej stronie przykłady
                    HTML Basic Examples. Dalszą część kursu W3C można obejrzeć
                    trochę później.
                </p>
            </div>
        </div>
    <div class="row">
        <div class="col-md-9">
            <h2>Organizacja projektu WebForms</h2>
            Projekt WebForms poza znanymi z wcześnieszych projektów .NET właściwościami
            i referencjami składa się z folderów oraz elementów. W każdym folderze znajdują
            się specyficzne dla aplikacji internetowej rzeczy.
            
            W szczególności są to foldery:
            <ul>
                <li>App_Data - miejsce do przechowywania źródeł danych, np. LocalDB</li>
                <li>App_Start - Konfiguracja skryptów JS oraz routowania. Biblioteki JS służą
                    do uruchamiania pewnych kawałków kodu po stronie klienta (w przeglądarce).
                    Dzieje się tak np. w przypadku obsługi animacji - nie ma sensu, żeby serwer
                    przesyłał powiedzmy 10 stron HMTL różniących się położeniem jednego elementu.
                    Można natomiast przesunąć ten element po stronie klienta - wtedy trzeba
                    przesłać jedną stronę i skrypt przesuwający element.
                </li>
                <li>Content - miejsce do przechowywania m.in. kaskadowych arkuszy styli (CSS).
                    Style CSS informują przeglądarkę jak ma renderować poszczególne znaczniki.
                    Możemy np. kazać, żeby wszystkie nagłówki <code>&lt;h1&gt;</code> były koloru
                    czerwonego. Domyślnie do projektu dołączany jest styl <code>bootstrap</code>,
                    który jest jednym z najpopularniejszych styli do tworzenia stron. Będzie on
                    szeroko omawiany w trakcie zajęć. Własny styl dla strony definiuje się domyślnie
                    w pliku <code>Site.css</code>
                </li>
                <li>fonts - folder wbrew pozorom nie zawiera czcionek. Programiści aplikacji webowych
                    spotykają się z pewną grupą problemów. Jednym z nich jest występowanie "na froncie"
                    pewnych powtarzających się symboli, np. ikonki użytkownika albo pobierania.

                    Wymyślono, żeby zastąpić niektóre znaki Unicode pewnymi symbolami. Glyphicons halfings
                    jest jednym z takich właśnie takim zbiorem i jest dołączony do projektu. Poniżej
                    pokazano przykład z ikonką pobierania.
                    <a class="btn btn-info"><i class="glyphicon glyphicon-save"></i> Pobierz</a>
                </li>
                <li>Scripts - miejsce do trzymania kodu JavaScript. Do projektów standardowo dołączone są
                    bardzo popularne skrypty, takie jak <code>bootstrap.js</code> - animacje do stylu
                    Bootstrap, <code>jquery</code> - biblioteka do manipulowania obiektami javascriptowymi,
                    <code>modernizr</code> - niwelacja różnic w wyświetlaniu między przeglądarkami,
                    <code>respond</code> - biblioteka do wspomagania dynamicznej zmiany wyglądu w zależności
                    od rozdzielczości ekranu.
                    
                    Ta strona ma włączoną responsywność - można to sprawdzić zmieniając rozmiar okna na
                    komputerze.
                </li>
            </ul> 

            <h2>Pliki w projektach WebForms</h2>
            <p> Poszczególne widoki (pojedyncze strony) w aplikacji WebForms znajdują się w osobnych plikach.
                Domyślnie stworzony projekt w WebForms ma 3 strony: Default.asp, Contact.aspx i About.aspx.
                Znajdują się one bezpośrednio w głównym folderze projektu.

                Każdy z widoków da się "rozwinąć", np. Default.aspx zawiera po "rozwinięciu" dodatkowy plik
                o nazwie <code>Default.aspx.cs</code>. Koncepcja polega na tym, że w pliku <code>.aspx</code>
                znajduje się dokument ze znacznikami, natomiast w pliku <code>.aspx.cs</code> znajduje się
                kod (zwykły kod w C#) służący np. do manipulacji danymi lub obsługi zdarzeń, np. kliknięć.

                Aplikacja WebForms zawiera również pliki konfiguracyjne <code>Bundle.config</code>
                i <code>packages.config</code>. Pierwszy z nich zawiera ścieżki do dołączanych plików ze stylami,
                natomiast drugi dołączane do projektu pliki JS.

                Kolejnymi plikami konfiguracyjnymi są <code>Web.config</code> - zawiera np. konfigurację połączenia
                z bazą danych (analogicznie jak w aplikacjach samodzielnych plik <code>App.config</code>.
                Ostatnim z plików konfiguracyjnych jest plik <code>Global.asax</code> - zawierajacy kod "globalny",
                wykonywany np. przy starcie aplikacji.
            </p>
        </div>
        <div class="col-md-3">
            <asp:Image ImageUrl="Images/project.png" runat="server" />
        </div>
    </div>
    <div class="row">
        <h2>Co dalej?</h2>
        <p>
            Proponuję oglądanie poszczególnych plików w następującej kolejności:
        </p>
        <ul>
            <li>
                <a href="Znaczniki.html">Znaczniki HMTL</a>
            </li>
            <li>
                <a href="css.html">Podstawy CSS</a>
            </li>
            <li>
                <a href="Zdarzenia.aspx">Zdarzenia w WebForms</a>
            </li>
            <li>
                <a href="RzorSample1.cshtml">Wprowadzenie do Razor</a>
            </li>
        </ul>
        <p>
            Zachęcam oczywiście do zapoznania się z kodem aspx, html i cs.
        </p>
    </div>
</asp:Content>
