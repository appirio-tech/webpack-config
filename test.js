var net = require('net');
var server = net.createServer();

server.once('error', function(err) {
  if (err.code === 'EADDRINUSE') {
    console.log('address in use');
  }
});

server.once('listening', function() {
  // close the server if listening doesn't fail
  server.close();
});

server.listen(8081);