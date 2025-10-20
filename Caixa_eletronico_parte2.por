programa {
    funcao inicio() {
        inteiro opcao
        real saldo, valor
        inteiro senha, senhaDigitada, tentativas

        senha = 1234
        saldo = 1000.0
        tentativas = 0
        opcao = -1

        escreva("=== Bem-vindo ao Caixa Eletrônico ===\n")

        enquanto (tentativas < 3) {
            escreva("Digite sua senha: ")
            leia(senhaDigitada)

            se (senhaDigitada == senha) {
                escreva("Acesso permitido!\n")
                opcao = -1

                enquanto (opcao != 0) {
                    escreva("\n=== MENU ===\n")
                    escreva("1 - Consultar Saldo\n")
                    escreva("2 - Depositar\n")
                    escreva("3 - Sacar\n")
                    escreva("0 - Sair\n")
                    escreva("Escolha uma opção: ")
                    leia(opcao)

                    se (opcao == 1) {
                        escreva("Seu saldo é: R$ ", saldo, "\n")
                    } senao se (opcao == 2) {
                        escreva("Digite o valor para depósito: ")
                        leia(valor)
                        se (valor > 0) {
                            saldo = saldo + valor
                            escreva("Depósito realizado!\n")
                        } senao {
                            escreva("Valor inválido.\n")
                        }
                    } senao se (opcao == 3) {
                        escreva("Digite o valor para saque: ")
                        leia(valor)
                        se (valor > 0) {
                            se (valor <= saldo) {
                                saldo = saldo - valor
                                escreva("Saque realizado!\n")
                            } senao {
                                escreva("Saldo insuficiente.\n")
                            }
                        } senao {
                            escreva("Valor inválido.\n")
                        }
                    } senao se (opcao == 0) {
                        escreva("Saindo...\n")
                    } senao {
                        escreva("Opção inválida.\n")
                    }
                }

                tentativas = 3  // sair do loop de senha
            } senao {
                tentativas = tentativas + 1
                escreva("Senha incorreta. Tentativa ", tentativas, " de 3.\n")
            }
        }

        se (senhaDigitada != senha) {
            escreva("Número máximo de tentativas atingido. Cartão bloqueado.\n")
        }
    }
}