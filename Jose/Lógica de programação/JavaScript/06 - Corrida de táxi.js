/**
 * Cálculo do valor de uma corrida de táxi
 * @author Erica Viana
 */

// Importar a biblioteca read-linesync
const input = require('readline-sync')

// Variáveis - O algoritmo
let distanciaEmKm, valorCorrida, valorPorKm

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Cálculo do valor de uma corrida de táxi")

// Entrada - Atribuir valores as variáveis
distanciaEmKm = Number(input.question("Digite a distancia da viagem (em km-h): "))
valorPorKm = Number(input.question("Digite o valor da corrida por km (em R$): "))

// Processamento - Fórmula para cálculo do código
valorCorrida = distanciaEmKm * valorPorKm

// Saída - Resultado do processamento
console.log(`Valor da corrida: R$ ${valorCorrida.toFixed(2)}`)
