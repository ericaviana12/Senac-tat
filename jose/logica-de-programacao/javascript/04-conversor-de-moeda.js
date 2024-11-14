/**
 * Cálculo da Conversão de Real para Dólar
 * @author Erica Viana
 */

// Importar a biblioteca read-linesync
const input = require('readline-sync')

// Variáveis - O algoritmo
let cambio, dolar, real

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Cálculo da Conversão de Real para Dólar")

// Entrada - Atribuir valores as variáveis
real = Number(input.question("Digite o valor em Real: "))
cambio = Number(input.question("Digite a taxa de câmbio (quanto vale R$1.00): "))

// Processamento - Fórmula para cálculo do código
dolar = real * cambio

// Saída - Resultado do processamento
console.log(`Valor em dólar: ${dolar.toFixed(2)} USD`)
