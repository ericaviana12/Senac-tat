/**
 * Cálculo da quantidade de tijolos
 * @author Erica Viana
 */

// Importar a biblioteca read-linesync
const input = require('readline-sync')

// Variáveis - O algoritmo
let alturaParede, alturaTijolo, areaParede, areaTijolo, larguraParede, larguraTijolo, quantidadeTijolos

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Cálculo da quantidade de tijolos")

// Entrada - Atribuir valores as variáveis
larguraParede = Number(input.question("Digite a largura da parede (em metros): "))
alturaParede = Number(input.question("Digite a altura da parede (em metros): "))
larguraTijolo = Number(input.question("Digite a largura de um tijolo (em metros): "))
alturaTijolo = Number(input.question("Digite a altura de um tijolo (em metros): "))

// Processamento - Fórmula para cálculo do código
areaParede = larguraParede * alturaParede
areaTijolo = larguraTijolo * alturaTijolo
quantidadeTijolos = areaParede * areaTijolo

// Saída - Resultado do processamento
console.log(`Quantidade de tijolos: ${Math.ceil(quantidadeTijolos)} unidades`) // A função "Math.ceil" arredonda o número para cima
