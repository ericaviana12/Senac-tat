/**
 * Cálculo da área de um triângulo
 * @author Erica Viana
 */

// Importar a biblioteca read-linesync
const input = require('readline-sync')

// Variáveis - O algoritmo
let altura, area, base

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Cálculo da área de um triângulo")

// Entrada - Atribuir valores as variáveis
base = Number(input.question("Digite o valor da base do triangulo: "))
altura = Number(input.question("Digite o valor da altura do triangulo: "))

// Processamento - Fórmula para cálculo do código
area = (base * altura) / 2

// Saída - Resultado do processamento
console.log(`Área do triângulo: ${area.toFixed(1)} m²`)
