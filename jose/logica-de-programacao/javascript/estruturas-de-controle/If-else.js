Estruturas de controle condicionais:

- Somente com a sintaxe "if"


// Exemplo de condição verdadeira (Média = 7)

let media = 7 (aperta enter) // Dado atribuído para validação

if (media < 5) {
    console.log("reprovado")
}


// Exemplo de condição falsa (Média = 3)

let media = 3 (aperta enter) // Dado atribuído para validação

if (media < 5) {
    console.log("reprovado")
}
    reprovado // Exibe a frase solicitada, devido ao valor atribuído ser menor que o condicional

---

- Unir as sintaxes "if" e "else"


// Exemplo de condição falsa (Média = 3)

let media = 3 (aperta enter) // Dado atribuído para validação

if (media < 5) {
    console.log("reprovado")
} else {
    console.log("aprovado")
}
    reprovado // Exibe a frase solicitada, devido ao valor atribuído ser menor que o condicional


// Exemplo de condição verdadeira (Média = 9)

let media = 9 (aperta enter) // Dado atribuído para validação

if (media < 5) {
    console.log("reprovado")
} else {
    console.log("aprovado")
}
    aprovado // Exibe a frase solicitada, devido à sintaxe "else"
