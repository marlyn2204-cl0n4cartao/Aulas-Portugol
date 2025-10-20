/* Você foi contratado para criar um programa de acesso a usuários para algumas salas de cinema:
primeiro o programa devera perguntar o nome do usuario, depois ler o nome dele.
segundo o usuario devera digitar a idade dele.
primeira condição se ele for menor de 12 anos podera entrar e assistir somente o filme Stich
segunda condição se ele for maior de 12 anos e menor de 16 podera entrar e assistir o filme dos vingadores 
terceira condição se ele for maior de 16 anos podera ver qualquer um dos dois que ele desejar*/
programa {
  funcao inicio() {
    cadeia nome
    inteiro idade

    escreva("Digite seu nome..: ")
    leia(nome)

    escreva("Digite sua idade..: ")
    leia(idade)

    se (idade < 12) 
      escreva("Ola ", nome, " Voce pode ver o filme do Stich na sala 1. Obrigado!")

    senao se (idade >= 12 e idade <= 16)
      escreva("Ola ", nome, " Voce pode ver o filme dos vingadores na sala 2. Obrigado!")
      
    senao
      escreva("Ola ", nome, " Voce pode ver qualquer um dois dois filmes que desejar so escolher a sala. Obrigado!")

      
  }
}
