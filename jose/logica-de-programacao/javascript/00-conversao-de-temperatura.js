/**
 * Conversão de temperatura (Celsius para Fahrenheit)
 * @author Erica Viana
 */

// Importar a biblioteca read-linesync
const input = require('readline-sync')

// Variáveis - O algoritmo
let celsius, fahrenheit

console.clear() // Limpa o console

console.log("Conversão de Celsius para Fahrenheit")

// Entrada
celsius = Number(input.question("Digite a temperatura em Celsius: "))

// Processamento
fahrenheit = (9/5) * celsius + 32

// Saída
console.log(`Temperatura em Fahrenheit: ${fahrenheit.toFixed(1)} °F`)
