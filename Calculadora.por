programa {
  funcao inicio() {
    real num1, num2, resultado
        caracter operacao

        escreva("--- Calculadora Simples ---")

        escreva("Digite o primeiro número: ")
        leia(num1)

        escreva("Digite a operação (+, -, *, /): ")
        leia(operacao)

        escreva("Digite o segundo número: ")
        leia(num2)

        se (operacao == '+') {
            resultado = num1 + num2
            escreva("Resultado: ", num1, " + ", num2, " = ", resultado)
        }
        senao se (operacao == '-') {
            resultado = num1 - num2
            escreva("Resultado: ", num1, " - ", num2, " = ", resultado)
        }
        senao se (operacao == '*') {
            resultado = num1 * num2
            escreva("Resultado: ", num1, " * ", num2, " = ", resultado)
        }
        senao se (operacao == '/') {
            se (num2 != 0) {
                resultado = num1 / num2
                escreva("Resultado: ", num1, " / ", num2, " = ", resultado)
            }
            senao {
                escreva("Erro: Divisão por zero não é permitida.")
            }
        }
        senao {
            escreva("Operação inválida!")
        }
    }
}
 
