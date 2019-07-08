$.get('/country', function(data){
    const countryTable = $('.table');
    data.forEach(element => {
        countryTable.append('<tr><td>' + element.Id + '</td><td>' + element.Name + '</td></tr>');
    });  
});

