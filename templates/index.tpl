{include file="header.tpl" title=foo}

<body class="is-preload">

<!-- Sidebar -->
{include file="menu.tpl" title=foo}

<!-- Wrapper -->
<div id="wrapper">

    <!-- Intro -->
    <section id="intro" class="wrapper style1 fullscreen fade-up">
        <div class="inner">
            <h1>Карта астрономических явлений</h1>
            <p>Всего акттивных событий - {$count}</p>
            <p>Здесь вы можете узнать не только даты различных астрономических событий, таких как лунное затмение, метеоритные дожди и многое другое, но и различные факты про них.</p>
        </div>
    </section>

    <!-- One -->
    <section id="one" class="wrapper style3 fade-up">
        <div class="inner">
            <h2>Карта событий</h2>
            <p> На карте вы сможете в каких городах и в какое время видны астрономические события .</p>
            <div class="features">
                <div id="map"></div>
            </div>
        </div>
    </section>

    <!-- Two -->
    <section id="two" class="wrapper style2 spotlights">
        <div class="inner">
            <h2>Астрономические события 2023 года:</h2>
        </div>

{foreach $locations as $location}
        <section>
            <div class="content">
                <div class="inner">
                    <h3>{$location.start}</h3>
                    <h2>{$location.title}</h2>
                    <p>{$location.description}</p>
                    <ul class="actions">
                        <li><a href="/location/{$location.id}" class="button">Подробнее</a></li>
                    </ul>
                </div>
            </div>
        </section>
{/foreach}

        <section>
            <div class="content">
                <div class="inner">
                    <h3>25 апреля 2023</h3>
                    <h2>Солнечное затмение</h2>
                    <p>Какой-то текст.</p>
                    <ul class="actions">
                        <li><a href="generic.html" class="button">Подробнее</a></li>
                    </ul>
                </div>
            </div>
        </section>

        <section>
            <div class="content">
                <div class="inner">
                    <h3>24 августа 2023</h3>
                    <h2>Созвездие девы</h2>
                    <p>Какой-то текст</p>
                    <ul class="actions">
                        <li><a href="generic.html" class="button">Подробнее</a></li>
                    </ul>
                </div>
            </div>
        </section>
        <div class="inner">
            <h2>Астрономические события 2024 года:</h2>
        </div>
        <section>
            <div class="content">
                <div class="inner">
                    <h3>24 августа 2024</h3>
                    <h2>Созвездие девы</h2>
                    <p>Какой-то текст</p>
                    <ul class="actions">
                        <li><a href="generic.html" class="button">Подробнее</a></li>
                    </ul>
                </div>
            </div>
        </section>

        <section>
            <div class="content">
                <div class="inner">
                    <h3>23-24 декабря 2024</h3>
                    <h2>Метеоритный дождь</h2>
                    <p>Какой-то текст</p>
                    <ul class="actions">
                        <li><a href="generic.html" class="button">Подробнее</a></li>
                    </ul>
                </div>
            </div>
        </section>

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

{include file="footer.tpl"}
