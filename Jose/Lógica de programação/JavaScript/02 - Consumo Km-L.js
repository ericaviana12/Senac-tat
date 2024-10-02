/**
 * Cálculo do consumo de litros de combustível por km percorrido
 * @author Erica Viana
 */

// Importar a biblioteca read-linesync
const input = require('readline-sync')

// Variáveis - O algoritmo
let distancia, litros, consumo

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Cálculo do consumo de litros de combustível por km percorrido")

// Entrada - Atribuir valores as variáveis
distancia = Number(input.question("Digite a distancia percorrida: "))
litros = Number(input.question("Digite a quantidade de litros de combustivel utilizado: "))

// Processamento - Fórmula para cálculo do código
consumo = distancia/litros

// Saída - Resultado do processamento
console.log(`Consumo do veículo: ${consumo.toFixed(2)} km/l`)
