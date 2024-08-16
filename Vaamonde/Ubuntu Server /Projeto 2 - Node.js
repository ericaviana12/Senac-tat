const express = require('express');
const path = require('path');

const app = express();

// Configura o Express para servir arquivos estáticos da pasta 'public'
app.use(express.static(path.join(__dirname, 'public')));

// Rota principal
app.get('/', (req, res) => {
    const currentDate = new Date();
    const formattedDate = currentDate.toLocaleString();

    const message = `
        <h1>Projeto em Node.js</h1>
        <p>Data e Hora atuais: ${formattedDate}</p>
        <ul>
            <li><a href="http://10.26.44.210/erica/" target="_blank">HTML - Erica Viana</a></li>
            <li><a href="http://10.26.44.210/erica/erica.php" target="_blank">PHP - Erica Viana</a></li>
            <li><a href="http://10.26.44.210/wp/" target="_blank">Wordpress - Erica Viana</a></li>
            <li><a href="https://github.com/ericaviana12" target="_blank">GitHub - Erica Viana</a></li>
        </ul>
        <img src="https://www.minhareceita.com.br/app/uploads/2022/12/pizza-de-pepperoni-caseira-portal-minha-receita.jpg" alt="Pizza">
    `;

    res.send(message);
});

// Porta padrão utilizada pela aplicação do Node.js
app.listen(3030, () => {
    console.log('Aplicativo ouvindo na porta 3030');
});
