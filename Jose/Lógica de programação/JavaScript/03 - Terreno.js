/**
 * Cálculo da área de um terreno
 * @author Erica Viana
 */

// Importar a biblioteca read-linesync
const input = require('readline-sync')

// Variáveis - O algoritmo
let area, comprimento, largura

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Cálculo da área de um terreno")

// Entrada - Atribuir valores as variáveis
comprimento = Number(input.question("Digite o comprimento do terreno: ")) // Inserir o valor em metros
largura = Number(input.question("Digite a largura do terreno: "))

// Processamento - Fórmula para cálculo do código
area = comprimento * largura

// Saída - Resultado do processamento
console.log(`Área do terreno: ${area.toFixed(2)} m²`)
