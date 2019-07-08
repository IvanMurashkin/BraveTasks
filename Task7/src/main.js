
ymaps.ready(function(){
    const myMap = new ymaps.Map('map', {
        center: [55.753994, 37.622093],
        zoom: 1
    });
    
    const handlerPaging = (function(e) {
        let page = 0;
   
        return function(e) {
            if ($(e.target).val() == $('.country').val()) page = 0;
    
            if(e.target.value == 'ahead') {
                page++;
            } else {
                if(page > 0) page--;
            }
        
            $.get('/cities', { country: $('.country').val(), page }, function(data) {
                const citiesTable = $('.cities-table');

                if (page >= 0 && data.length != 0) {
                    $('.cities-table tr:not(:first-child)').remove();
                    myMap.geoObjects.removeAll();
                    
                    data.forEach((element, index) => {
                        citiesTable.append('<tr><td>' + element.Id + '</td><td>' + element.Name + '</td></tr>');
                        
                        ymaps.geocode(element.Name, {
                            results: 1
                        }).then(function (res) {
                                const firstGeoObject = res.geoObjects.get(0);
                    
                                firstGeoObject.options.set('preset', 'islands#darkBlueDotIconWithCaption');
                                firstGeoObject.properties.set('iconCaption', firstGeoObject.getAddressLine());
                                myMap.geoObjects.add(firstGeoObject);
                    
                            });
                    });         
                } else {
                    page--;
                }
            });
        }; 
    })();

    $('.btn-backward').click(handlerPaging);
    $('.btn-ahead').click(handlerPaging);
    $('.country').on('input', handlerPaging);

});