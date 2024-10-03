/**
 * Cálculo de troco de uma compra
 * @author Erica Viana
 */

// Importar a biblioteca readline-sync
const input = require('readline-sync')

// Variáveis
let valorCompra, valorPago, troco

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Cálculo de troco de uma compra")
console.log("troco = valorPago - valorCompra")

// Entrada - Atribuir valores às variáveis
valorCompra = Number(input.question("Qual o valor da compra?"))
valorPago = Number(input.question("Qual o valor da pago?"))

// Processamento - Fórmula para cálculo do desconto
troco = valorPago - valorCompra

// Saída - Resultado do processamento
console.log(`O troco da compra é de R$ ${troco.toFixed(2)}`)
