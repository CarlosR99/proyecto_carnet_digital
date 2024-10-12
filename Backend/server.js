// server.js
const express = require('express');
const app = express();
const port = 3000;

app.use(express.json()); // Para soportar JSON en requests

// Ruta de ejemplo
app.get('/', (req, res) => {
  res.send('Hola desde el servidor Node.js');
});

// Levantar el servidor
app.listen(port, () => {
  console.log(`Servidor corriendo en http://localhost:${port}`);
});
