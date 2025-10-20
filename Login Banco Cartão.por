programa {
  funcao inicio() {
  // Declaração de Variáveis
    cadeia credenciais, codigo, senhaCompleta, data, operadora, senha, cpf
  // Entrada de dados
    escreva("Digite o código numérico: ")
    leia(credenciais)

    escreva("digite o código de verificação(código CVV): ")
    leia(codigo)

    escreva("Digite a data de validade: ")
    leia(data)

    escreva("Digite sua senha :")
    leia(senha)

    escreva("Digite seu CPF: ")
    leia(cpf)

    escreva("Digite sua Operadora bancária: ")
    leia(operadora)

  // Processamento de dados
    senhaCompleta = credenciais + " " + codigo + data + cpf + senha + operadora
  // Saída de dados
    escreva("Cartão Completo: ", senhaCompleta, "\n")
    escreva("Suas Credenciais Foram enviadas o banco" )
  }
}
