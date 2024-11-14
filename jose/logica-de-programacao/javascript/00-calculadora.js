/**
 * Desenvolvimento de uma calculadora
 * @author Erica Viana
 */

// Importar a biblioteca read-linesync
const input = require('readline-sync')

// Variáveis - O algoritmo
let a, b, resultado = null

console.clear()

// Exibir o texto entre "" (aspas)
console.log("Calculadora")

a = Number(input.question("Digite o primeiro numero: "))
b = Number(input.question("Digite o segundo numero: "))

console.log("")
console.log("1. Somar")
console.log("2. Subtrair")
console.log("3. Multiplicar")
console.log("4. Dividir")
console.log("5. Porcentagem")

// Entrada 1 - Escolha do usuário
opcao = Number(input.question("Digite a opcao desejada: "))
console.log("")
switch (opcao) {
    case 1:
        console.log("Opção escolhida Somar")
            resultado = a + b
            console.log(`Resultado: ${resultado}`)
        break
    case 2:
        console.log("Opção escolhida Subtrair")
            resultado = a - b
            console.log(`Resultado: ${resultado}`)
        break
    case 3:
        console.log("Opção escolhida Multiplicar")
            resultado = a * b
            console.log(`Resultado: ${resultado}`)
        break
    case 4:
        console.log("Opção escolhida Dividir")
        if (b !== 0) {
            resultado = a / b
        } else {
            resultado = 'Erro: divisão por zero'
        }
        break
    case 5:
        console.log("Opção escolhida Porcentagem")
            resultado = (a * b) / 100
            console.log(`${a}% de ${b} = ${resultado.toFixed(2)}`)
        break
    default:
        console.log("Opção inválida")
        break
}
