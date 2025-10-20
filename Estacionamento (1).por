programa {
  funcao inicio() {
    inteiro vagas = 5, opcao, i, vagaEscolhida, livre
    cadeia placa[5]
    logico ocupado[5]

    // inicializa as vagas
    para (i = 0; i < vagas; i = i + 1) {
      ocupado[i] = falso
      placa[i] = ""
    }

    enquanto (verdadeiro) {
      escreva("\n=== ESTACIONAMENTO ===\n")
      escreva("1 - Mostrar vagas\n")
      escreva("2 - Estacionar\n")
      escreva("3 - Liberar vaga\n")
      escreva("0 - Sair\n")
      escreva("Escolha uma opção: ")
      leia(opcao)

      se (opcao == 1) {
        para (i = 0; i < vagas; i = i + 1) {
          se (ocupado[i]) {
            escreva("Vaga ", i + 1, ": OCUPADA (", placa[i], ")\n")
          } senao {
            escreva("Vaga ", i + 1, ": LIVRE\n")
          }
        }
      }
      senao se (opcao == 2) {
        livre = -1
        para (i = 0; i < vagas; i = i + 1) {
          se (ocupado[i] == falso) {
            livre = i
            pare
          }
        }

        se (livre == -1) {
          escreva("Nenhuma vaga disponível!\n")
        } senao {
          escreva("Digite a placa do veículo: ")
          leia(placa[livre])
          ocupado[livre] = verdadeiro
          escreva("Veículo estacionado na vaga ", livre + 1, ".\n")
        }
      }
      senao se (opcao == 3) {
        escreva("Digite o número da vaga para liberar (1 a ", vagas, "): ")
        leia(vagaEscolhida)
        vagaEscolhida = vagaEscolhida - 1

        se (vagaEscolhida < 0 ou vagaEscolhida >= vagas) {
          escreva("Vaga inválida!\n")
        } senao se (ocupado[vagaEscolhida] == falso) {
          escreva("Essa vaga já está livre!\n")
        } senao {
          ocupado[vagaEscolhida] = falso
          placa[vagaEscolhida] = ""
          escreva("Vaga liberada com sucesso!\n")
        }
      }
      senao se (opcao == 0) {
        escreva("Encerrando o programa...\n")
        pare
      }
      senao {
        escreva("Opção inválida!\n")
      }
    }
  }
}
