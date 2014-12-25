var express = require('express');
var app = express();

var httpServerLib = require('http');
var webSocketLib = require('ws');

var httpServer = httpServerLib.createServer().listen(5002);
var webSocketServer = new webSocketLib.Server({server: httpServer});

webSocketServer.on('connection', function (clientSocket) {

    console.log('some client has connected!');

    clientSocket.on('message', function (message) {

        console.log('Received: '+message);

    });

});


app.set('port', (process.env.PORT || 5000));
app.use(express.static(__dirname + '/public'));

app.get('/', function (request, response) {
    response.send('Hello World!');
});

app.listen(app.get('port'), function () {
    console.log("Node app is running at localhost:" + app.get('port'));
});
