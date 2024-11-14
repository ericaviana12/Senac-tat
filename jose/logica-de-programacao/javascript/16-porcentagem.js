/**
 * Cálculo da porcentagem de um valor
 * @author Erica Viana
 */

// Importar a biblioteca read-linesync
const input = require('readline-sync')

// Variáveis - O algoritmo
let x, y, valor

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Cálculo de porcentagem de um valor")
console.log("x% de y = valor")

// Entrada - Atribuir valores as variáveis
x = Number(input.question("Digite o valor de x: "))
y = Number(input.question("Digite o valor de y: "))

// Processamento - Fórmula para cálculo do código
valor = (x * y)/100

// Saída - Resultado do processamento
console.log(`${x}% de ${y} = ${valor.toFixed(2)}`)
