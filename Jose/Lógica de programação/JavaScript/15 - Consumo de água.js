/**
 * Cálculo do consumo diário de água
 * @author Erica Viana
 */

// Importar a biblioteca read-linesync
const input = require('readline-sync')

// Variáveis - O algoritmo
let consumo, peso

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Cálculo do consumo diário de água")

// Entrada - Atribuir valores as variáveis
peso = Number(input.question("Digite o peso (em kg): "))

// Processamento - Fórmula para cálculo do código
consumo = peso * 0.035

// Saída - Resultado do processamento
console.log(`Consumo diário de água: ${consumo.toFixed(3)} litros`)
