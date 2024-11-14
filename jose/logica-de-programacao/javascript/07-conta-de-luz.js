/**
 * Cálculo do valor da conta de luz
 * @author Erica Viana
 */

// Importar a biblioteca read-linesync
const input = require('readline-sync')

// Variáveis - O algoritmo
let consumoEmKwh, valorConta, valorPorKwh

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Cálculo do valor da conta de luz")

// Entrada - Atribuir valores as variáveis
consumoEmKwh = Number(input.question("Digite o consumo de energia (em kWh): "))
valorPorKwh = Number(input.question("Digite o valor da tarifa por kWh: "))

// Processamento - Fórmula para cálculo do código
valorConta = consumoEmKwh * valorPorKwh

// Saída - Resultado do processamento
console.log(`Valor da conta: R$ ${valorConta.toFixed(2)}`)
