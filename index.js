const express = require('express');
const app = express();

app.get('/home', (req, res) => {
   res.send('Hello from Jenkins and Dockeri!');
});

app.listen(8000, () => {
    console.log("Server is listening on port 8000");
});
