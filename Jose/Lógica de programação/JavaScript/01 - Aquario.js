/**
 * Cálculo do volume de um aquario
 * @author Erica Viana
 */

// Importar a biblioteca read-linesync
const input = require('readline-sync')

// Variáveis - O algoritmo
let volume, comprimento, largura, altura

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Cálculo do volume de um aquario")

// Entrada - Atribuir valores as variáveis
comprimento = Number(input.question("Digite o comprimento do aquario: ")) // Inserir o valor em cm
largura = Number(input.question("Digite a largura do aquario: "))
altura = Number(input.question("Digite a altura do aquario: "))

// Processamento - Fórmula para cálculo do código
volume = (comprimento * largura * altura)/1000

// Saída - Resultado do processamento
console.log(`Volume: ${volume.toFixed(2)}`)
