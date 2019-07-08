const handlerPaging = (function(e) {
    let page = 0

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
                
                data.forEach(element => {
                    citiesTable.append('<tr><td>' + element.Id + '</td><td>' + element.Name + '</td></tr>');
                });  
            } else {
                page--;
            }
        })
    };
})();

$('.btn-backward').click(handlerPaging);
$('.btn-ahead').click(handlerPaging);
$('.country').on('input', handlerPaging);