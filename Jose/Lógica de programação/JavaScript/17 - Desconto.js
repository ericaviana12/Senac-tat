/**
 * Cálculo de desconto em uma compra
 * @author Erica Viana
 */

// Importar a biblioteca readline-sync
const input = require('readline-sync')

// Variáveis
let precoOriginal, percentualDesconto, valorFinal

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Cálculo de desconto em uma compra")
console.log("Preço final = Preço original - (Percentual de desconto% do preço original)")

// Entrada - Atribuir valores às variáveis
precoOriginal = Number(input.question("Digite o preço original do produto: R$ "))
percentualDesconto = Number(input.question("Digite o percentual de desconto (%): "))

// Processamento - Fórmula para cálculo do desconto
valorFinal = precoOriginal - ((precoOriginal * percentualDesconto) / 100)

// Saída - Resultado do processamento
console.log(`O valor final do produto com ${percentualDesconto}% de desconto é: R$ ${valorFinal.toFixed(2)}`)