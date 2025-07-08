const express = require('express');
const app = express();

app.get('/home', (req, res) => {
   res.send('Hello from Jenkins and Dockeri i am now able to run !');
});

app.listen(8000, () => {
    console.log("Server is listening on port 8000");
});
