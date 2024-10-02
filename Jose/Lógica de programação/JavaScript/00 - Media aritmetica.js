/**
 * Cálculo da média aritmética de 3 valores
 * @author Erica Viana
 */

// Importar a biblioteca read-linesync
const input = require('readline-sync')

// Variáveis - O algoritmo
let num1, num2, num3, media

// Limpar o Terminal
console.clear()

// Exibir o texto entre "" (aspas)
console.log("Cálculo da média aritmética de 3 números")

// Entrada - Atribuir valores as variáveis
// No console, entradas numéricas precisam ser convertidas com uso do método "Number()" - com o N maiúsculo
num1 = Number(input.question("Digite o primeiro numero: ")) // "Number()" - Converter a resposta inserida em número
num2 = Number(input.question("Digite o segundo numero: "))
num3 = Number(input.question("Digite o terceiro numero: "))

// Processamento - Fórmula para cálculo do código
media = (num1 + num2 + num3)/3

// Saída - Resultado do processamento
console.log(`Média: ${media.toFixed(1)}`) // .toFixed(1) - Limita os caracteres numéricos à 1 casa decimal
