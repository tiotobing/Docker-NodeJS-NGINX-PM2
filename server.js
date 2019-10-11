'use strict';

const express = require('express');

// Constants
const PORT = 3000;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.send('Hello world\nWeb-App-01');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
