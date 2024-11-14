/**
 * Cálculo do consumo de combustível
 * @author Erica Viana
 */

// Importar a biblioteca read-linesync
const input = require('readline-sync')

// Variáveis - O algoritmo
let etanol, gasolina

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Qual combustível comprar")

// Entrada - Atribuir valores as variáveis
etanol = Number(input.question("Digite o valor do etanol (em R$): "))
gasolina = Number(input.question("Digite o valor do gasolina (em R$): "))

// Processamento e saída
if (etanol < 0.7 * gasolina) {
    console.log("Etanol")
} else {
    console.log("Gasolina")
}
