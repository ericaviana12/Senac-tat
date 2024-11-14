/**
 * Cálculo do custo por quilômetro rodado
 * @author Erica Viana
 */

// Importar a biblioteca read-linesync
const input = require('readline-sync')

// Variáveis - O algoritmo
let custoPorKm, custoTotal, distancia

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Cálculo do custo por quilômetro rodado")

// Entrada - Atribuir valores as variáveis
custoTotal = Number(input.question("Digite o custo total da viagem (em R$): "))
distancia = Number(input.question("Digite a distancia da viagem (em km): "))

// Processamento - Fórmula para cálculo do código
custoPorKm = custoTotal / distancia

// Saída - Resultado do processamento
console.log(`Custo por Km: R$ ${custoPorKm.toFixed(2)}`)
