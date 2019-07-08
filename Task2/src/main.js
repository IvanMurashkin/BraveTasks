$.get('/country', function(data){
    const country = $('.country');
    data.forEach(element => {
        country.append('<option value="' + element.Id + '">' + element.Name +'</option>');
    });  
});

$('.country').change(function(e){
    $.get('/cities', {country: e.target.value}, function(data){
        const citiesTable = $('.cities-table');
        $('.cities-table tr:not(:first-child)').remove();
        data.forEach((element, index) => {
            citiesTable.append('<tr><td>' + ++index + '</td><td>' + element.Name + '</td></tr>');
        });   
    });
});
