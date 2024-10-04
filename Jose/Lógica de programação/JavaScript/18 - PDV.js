/**
 * PDV
 * @author Erica Viana
 */

// Importar a biblioteca readline-sync
const input = require('readline-sync')

// Variáveis
let total, desconto, totalDesconto, valorDesconto, valorPago, troco

console.clear()

// Exibir o texto entre "" (aspas)
console.log("  _____ ____  _____  ")
console.log(" |  _  |    \\|  |  |")
console.log(" |   __|  |  |  |  | ")
console.log(" |__|  |____/ \\___/ ")

console.log("")

// Entrada 1 - Atribuir valores às variáveis
total = Number(input.question("Digite o valor total da compra: "))
desconto = Number(input.question("Digite o valor do desconto em porcentagem: "))

// Processamento 1 - Fórmula para cálculo do código
valorDesconto = (total * desconto) / 100

// Processamento 2 - Fórmula para cálculo do código
totalDesconto = total - valorDesconto

// Saída 1 - Resultado do processamento
console.log("")
console.log("------------------------------")
console.log(`Total: R$ ${total.toFixed(2)}`)
console.log(`Desconto: ${desconto}%`)
console.log(`Valor do desconto: R$ ${valorDesconto.toFixed(2)}`)
console.log(`Total com desconto: R$ ${totalDesconto.toFixed(2)}`)
console.log("")

// Entrada 2 - Atribuir valores às variáveis
valorPago = Number(input.question("Digite o valor em dinheiro pago pelo cliente: "))

// Processamento 3 - Fórmula para cálculo do código
troco = valorPago - totalDesconto

// Saída 2 - Resultado do processamento
console.log("")
console.log("------------------------------")
console.log(`Total: R$ ${total.toFixed(2)}`)
console.log(`Desconto: ${desconto}%`)
console.log(`Valor do desconto: R$ ${valorDesconto.toFixed(2)}`)
console.log(`Total com desconto: R$ ${totalDesconto.toFixed(2)}`)
console.log("")
console.log(`Valor pago em dinheiro: R$ ${valorPago.toFixed(2)}`)
console.log(`Troco: R$ ${troco.toFixed(2)}`)
console.log("")
