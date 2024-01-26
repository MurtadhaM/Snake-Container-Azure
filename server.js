/**
 * @description: This is the entry point for the application.
 */
const express = require('express');
let bodyParser = require('body-parser');
const app = express();
const port = process.env.PORT || 8080;



app.get('/api/hello', (req, res) => {
    let name = req.query.name || 'World';
    res.send(`Hello ${name}!`);
});


app.get('/api/bye', (req, res) => {
    let name = req.query.name || 'World';
    res.send(`Goodbye ${name}!`);
}
);

app.post('/api/json', (req, res) => {
    // get the data from the request
    let data = req.body;
    // send the data back
    res.json(data);
}
);




app.get('/', (req, res) => {
    res.send('Hello World!');
}
);
app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`);
}
);

