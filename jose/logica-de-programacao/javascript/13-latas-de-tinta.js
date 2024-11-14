/**
 * Cálculo da quantidade de latas de tinta
 * @author Erica Viana
 */

// Importar a biblioteca read-linesync
const input = require('readline-sync')

// Variáveis - O algoritmo
let latasDeTinta, rendimentoLata, tamanhoParede

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Cálculo da quantidade de latas de tinta")

// Entrada - Atribuir valores as variáveis
tamanhoParede = Number(input.question("Digite o tamanho da parede (em m2): "))
rendimentoLata = Number(input.question("Digite o rendimento da lata (em m2 por lata): "))

// Processamento - Fórmula para cálculo do código
latasDeTinta = tamanhoParede / rendimentoLata

// Saída - Resultado do processamento
console.log(`Quantidade de latas de tinta: ${Math.ceil(latasDeTinta)} unidades`) // A função "Math.ceil" arredonda o número para cima
