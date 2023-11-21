ymaps.ready(init);

function init() {

    // Создание экземпляра карты.
    var myMap = new ymaps.Map('map', {
            center: [50.443705, 30.530946],
            zoom: 20
        }, {
            searchControlProvider: 'yandex#search'
        }),
        // Контейнер для меню.
        menu = $('<div class="row menu"></div>');

    for (var i = 0, l = groups.length; i < l; i++) {
        createMenuGroup(groups[i]);
    }

    function createMenuGroup (group) {
        // Пункт меню.
        var menuItem = $('<div class="col-lg-3"><h4><a href="#map">' + group.name + '</a></h4></div>'),
            // Коллекция для геообъектов группы.
            collection = new ymaps.GeoObjectCollection(null, { preset: group.style }),
            // Контейнер для подменю.
            submenu = $('<div class="submenu col-lg-6"></div>');

        // Добавляем коллекцию на карту.
        myMap.geoObjects.add(collection);
        // Добавляем подменю.
        menuItem
            .append(submenu)
            // Добавляем пункт в меню.
            .appendTo(menu)
            // По клику удаляем/добавляем коллекцию на карту и скрываем/отображаем подменю.
            .find('a')
            .bind('click', function () {
                if (collection.getParent()) {
                    myMap.geoObjects.remove(collection);
                    submenu.hide();
                } else {
                    myMap.geoObjects.add(collection);
                    submenu.show();
                }
            });
        for (var j = 0, m = group.items.length; j < m; j++) {
            createSubMenu(group.items[j], collection, submenu);
        }
    }

    function createSubMenu (item, collection, submenu) {
        // Пункт подменю.
// Пример кнопка справа от меню
//        var submenuItem = $('<li><a href="#">' + item.name + '</a> <button id="' + item.center + '" value="' + item.center + '">filter here ' + item.center + '</button></li>'),
        var submenuItem = $('<li><i class="bi bi-geo-alt"></i> <a href="#">' + item.name + '</a></li>'),
            // Создаем метку.
            placemark = new ymaps.Placemark( item.center, {
                balloonContentHeader: item.name,
                balloonContentBody: item.start + ' - ' + item.end, 
                balloonContentFooter: item.footer + ' <a class="ymaps-2-1-79-balloon-content__footer" href="/location/' + item.id + '" target="_blank">Подробнее</a>' ,
            });

        // Добавляем метку в коллекцию.
        collection.add(placemark);
        // Добавляем пункт в подменю.
        submenuItem
            .appendTo(submenu)
            // При клике по пункту подменю открываем/закрываем баллун у метки.
            /*
            .find('button')
            .bind('click', function () {
                var fired_button = $(this).val();
                alert(fired_button);
                if (!placemark.balloon.isOpen()) {
                    placemark.balloon.open();
                } else {
                    placemark.balloon.close();
                }
            })
            */
            .find('a')
            .bind('click', function () {
                if (!placemark.balloon.isOpen()) {
                    placemark.balloon.open();
                } else {
                    placemark.balloon.close();
                }
                return false;
            });
    }

    // Добавляем меню в тэг BODY.
    menu.appendTo($('mymap'));
    // Выставляем масштаб карты чтобы были видны все группы.
    myMap.setBounds(myMap.geoObjects.getBounds());
}