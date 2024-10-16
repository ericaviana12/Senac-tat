/**
 * Cálculo de IMC
 * @author Erica Viana
 */

const input = require('readline-sync'); // Importa a biblioteca readline-sync

console.clear();

// Exibir o texto entre "" (aspas)
console.log("Cálculo do IMC");

// Entrada
let peso = Number(input.question("Digite o seu peso (em kg): "));
let altura = Number(input.question("Digite a sua altura (em metros): "));

// Processamento
let imc = peso / Math.pow(altura, 2); // Fórmula do IMC: IMC = peso/altura²

// Classificação do IMC
let classificacao = '';

if (imc < 18.5) {
  classificacao = 'Abaixo do peso';
} else if (imc >= 18.5 && imc < 24.9) {
  classificacao = 'Peso normal';
} else if (imc >= 25 && imc < 29.9) {
  classificacao = 'Sobrepeso';
} else if (imc >= 30 && imc < 34.9) {
  classificacao = 'Obesidade grau 1';
} else if (imc >= 35 && imc < 39.9) {
  classificacao = 'Obesidade grau 2';
} else {
  classificacao = 'Obesidade grau 3 (mórbida)';
}

// Saída
console.log(`Seu IMC é: ${imc.toFixed(2)}`); 
console.log(`Classificação: ${classificacao}`); 
