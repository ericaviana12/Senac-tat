/**
 * Cálculo de desconto em uma compra
 * @author Erica Viana
 */

// Importar a biblioteca readline-sync
const input = require('readline-sync')

// Variáveis
let valorOriginal, percentualDesconto, valorFinal

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Cálculo de desconto em uma compra")
console.log("Valor final = Valor original - (Percentual de desconto% do valor original)")

// Entrada - Atribuir valores às variáveis
valorOriginal = Number(input.question("Digite o valor original do produto: R$ "))
percentualDesconto = Number(input.question("Digite o percentual de desconto (%): "))

// Processamento - Fórmula para cálculo do desconto
valorFinal = valorOriginal - ((valorOriginal * percentualDesconto) / 100)

// Saída - Resultado do processamento
console.log(`O valor final do produto com ${percentualDesconto}% de desconto é: R$ ${valorFinal.toFixed(2)}`)
