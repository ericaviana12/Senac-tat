/**
 * Cálculo de IMC
 * @author Erica Viana
 */

const input = require('readline-sync') // Importa a biblioteca readline-sync

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Cálculo do IMC")

// Entrada
let peso = Number(input.question("Digite o seu peso (em kg): "))
let altura = Number(input.question("Digite a sua altura (em metros): "))

// Processamento
let imc = peso / Math.pow(altura, 2) // Fórmula do IMC: IMC = peso/altura²

// Saída
console.log(`Seu IMC é: ${imc.toFixed(2)}`)

if (imc < 18.5) {
  console.log("Abaixo do peso")
} else if (imc < 25) {
  console.log("Peso normal")
} else if (imc < 30) {
  console.log("Sobrepeso")
} else if (imc < 35) {
  console.log("Obesidade grau 1")
} else if (imc < 40) {
  console.log("Obesidade grau 2")
} else {
  console.log("Obesidade grau 3 (mórbida)")
}
