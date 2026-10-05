const express = require('express');
const db = require('./db')
const app = express()
const port = 3000
app.use(express.json())

//Função para calcular o imc
function 

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.get('/test', (req, res) => {
  res.send('Test executed')
})

app.get('/prontuarios', async(req, res) => {
  try {
    const [rows]=await db.execute("SELECT * FROM pacientes")
    res.status(200).json(rows)
  } catch (error) {
    res.status(500).json({
        mensagem:"Internal Server Error",
        detalhes: error.message
    });
  }
})

app.get('/paciente/:id', async(req, res) => {
    const {id}=req.params;
  try {
    const [rows]=await db.execute("SELECT * FROM pacientes where id= ?",[id]);
    if(rows.length===0){
        res.status(404).json({
        mensagem:"Patient not found",
        detalhes: error.message
    });
    }
    res.status(200).json(rows)
  } catch (error) {
    res.status(500).json({
        mensagem:"Internal Server Error",
        detalhes: error.message
    });
  }
})

app.post('/paciente',async(req,res)=>{
    const {nome,idade,altura,peso}=req.body;
    if(!nome||!idade||!altura||!peso){
        res.status(400).json({
        mensagem:"Bad request",
        detalhes: error.message
    });
    }
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})