const express = require('express');
const db = require('./db')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.get('/test', (req, res) => {
  res.send('Test executed')
})

app.get('/prontuarios', (req, res) => {
  try {

  } catch (error) {
    
  }
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})