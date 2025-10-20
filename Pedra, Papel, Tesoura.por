/*idéia: Jogador escolhe uma opção e o computaddor escolhe outra.
Aprende: Estruturas escolha e operadores lógicos.*/

programa {
inclua biblioteca Util --> u

  funcao inicio() {
    inteiro jogador, pc
    escreva("1-Pedra, 2-Papel, 3-Tesoura: ")
    leia(jogador)
    pc = (u.sorteia(1, 1000) % 3) + 1

    escreva("Computador escolheu: ", pc, "\n")

    se (jogador == pc) {
      escreva("Empate!")
    } senao se ((jogador == 1 e pc == 3) ou (jogador == 2 e pc == 1) ou (jogador == 3 e pc == 2)) {
      escreva("Você venceu!")
    } senao {
      escreva("Computador venceu!")

   }
  }
}
