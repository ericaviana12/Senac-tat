/**
 * Conversão de milhas para quilômetros
 * @author Erica Viana
 */

// Importar a biblioteca read-linesync
const input = require('readline-sync')

// Variáveis - O algoritmo
let milhas, quilometros

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Conversão de milhas para quilômetros")

// Entrada - Atribuir valores as variáveis
milhas = Number(input.question("Digite as milhas: "))

// Processamento - Fórmula para cálculo do código
quilometros = milhas * 1.60934

// Saída - Resultado do processamento
console.log(`${milhas} milhas são ${quilometros.toFixed(2)} quilômetros`)
