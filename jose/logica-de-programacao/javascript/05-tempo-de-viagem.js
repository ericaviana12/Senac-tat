/**
 * Cálculo do tempo de viagem
 * @author Erica Viana
 */

// Importar a biblioteca read-linesync
const input = require('readline-sync')

// Variáveis - O algoritmo
let distancia, tempo, velocidade

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Cálculo do tempo de viagem")

// Entrada - Atribuir valores as variáveis
distancia = Number(input.question("Digite a distancia da viagem (em km-h): "))
velocidade = Number(input.question("Digite a velocidade media (em km-h): "))

// Processamento - Fórmula para cálculo do código
tempo = distancia / velocidade

// Saída - Resultado do processamento
console.log(`Tempo da viagem: ${tempo.toFixed(1)} Horas`)
