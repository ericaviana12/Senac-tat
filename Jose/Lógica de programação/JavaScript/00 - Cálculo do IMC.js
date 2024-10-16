/**
 * Cálculo do IMC
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
let imc = peso / Math.pow(altura, 2); // Fórmula do IMC: IMC = peso/altura², elevando a altura ao quadrado com a função Math.pow()

// Saída
console.log(`Seu IMC é: ${imc.toFixed(2)}`); // Exibe o resultado do IMC formatado com duas casas decimais
