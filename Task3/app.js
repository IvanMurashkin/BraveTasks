const express = require('express');
const mysql = require('mysql');
const app = express();
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    database: 'bravedb',
    password: 'kl5os9tr1'
});

connection.connect();

app.use(express.static('src'));

app.get('/', function(req, res){
    res.sendFile(__dirname + '/index.html');
});

app.get('/country', function(req, res){
    connection.query('select * from Country', function(err, data, field){
        res.json(data);
    });
});

app.get('/cities', function(req, res){
    let numberSkippedCities = 5 * req.query['page'];
    const queryCitiesByCountry = 'select Id, Name from Cities where CountryId = ' 
        + req.query['country'] + ' limit 5 offset ' + numberSkippedCities;
        
    connection.query(queryCitiesByCountry, function(err, data, field){
        res.json(data);
    });
});

app.listen(8080);