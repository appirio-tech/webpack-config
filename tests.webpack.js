 //make sure you have your directory and regex test set correctly!
var context = require.context('./src', true, /\.spec\.js$/);
context.keys().forEach(context);