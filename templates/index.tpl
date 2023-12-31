{include file="header.tpl.inc" title=foo}

<body class="is-preload">

<!-- Sidebar -->
{include file="menu.tpl.inc" title=foo}

<!-- Wrapper -->
<div id="wrapper">

    <!-- Intro -->
    <section id="intro" class="wrapper style1 fullscreen fade-up">
        <div class="inner">
            <h1>Карта астрономических явлений</h1>
            <p>Здесь вы можете узнать не только даты различных астрономических событий, таких как лунное затмение, метеоритные дожди и многое другое, но и различные факты про них.</p>
        </div>
    </section>

    <!-- One -->
    <section id="one" class="wrapper style3 fade-up">
        <div class="inner">
            <h2>Карта событий</h2>
            <p> На карте вы сможете в каких городах и в какое время видны астрономические события .</p>
            <div class="features" >
                <div id="map" style="width: 100%;"></div>
            </div>
        </div>
    </section>

    <!-- Two -->
    <section id="two" class="wrapper style2 spotlights">
        <div class="inner">
            <h2>Астрономические события:</h2>
            <p>Всего акттивных событий - {$count}</p>
        </div>

{foreach $locations as $location}
        <section>
            <div class="content">
                <div class="inner">
                    <h3> С {$location.start|date_format: "%d-%m-%Y %H:%M"} по {$location.end|date_format: "%d-%m-%Y %H:%M"}</h3>
                    <h2>{$location.title}</h2>
                    <p>{$location.comment}</p>
                    <ul class="actions">
                        <li><a href="/location/{$location.id}" class="button">Подробнее</a></li>
                    </ul>
                </div>
            </div>
        </section>
{/foreach}


        <!-- Footer -->
        <footer id="footer" class="wrapper style1-alt">
            <div class="inner">
                <ul class="menu">
                    <li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
                </ul>
            </div>
        </footer>

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.scrollex.min.js"></script>
        <script src="assets/js/jquery.scrolly.min.js"></script>
        <script src="assets/js/browser.min.js"></script>
        <script src="assets/js/breakpoints.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>

</body>

{include file="footer.tpl.inc"}
