const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send('Hello World! From AWS to world again and again')
})

app.listen(3000, () =>{
  console.log("server listening on port 3000");
});