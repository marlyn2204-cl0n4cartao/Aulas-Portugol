programa {
  funcao inicio() {
    //Declaração de variáveis
    cadeia nome
    inteiro idade
    //Entrada de dados

    escreva("Nome..:")
    leia(nome)

    escreva("Idade..:")
    leia(idade)

    se(idade > 12)
    escreva("Olá", nome, " Voce pode ver o filme de Demon Slayer na sala 5. Obrigado")

    senao se (idade >= 12 e idade <= 18)
    escreva(nome," Voce não pode ver esse filme.")


  }
}
