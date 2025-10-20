programa {

inclua biblioteca Matematica --> mat

  funcao inicio() {
      real peso, altura, imc

      escreva("====Cálculo no IMC====\n\n")

      escreva("Digite o seu peso (em kg): ")
      leia(peso)

      escreva("Digite a sua altura (em metros): ")
      leia(altura)

      imc = peso / (altura * altura)

      escreva("seu IMC é: ", mat.arredondar(imc, 2), "\n")

      // Classificação do IMC segundo a OMS
      se (imc < 18.5) {
        escreva("Classificação: Abaixo do peso\n")
      } senao se (imc >= 18.5 e imc < 25) {
        escreva("Classificação: Peso Normal\n")
      } senao se (imc >= 25 e imc < 30) {
        escreva("Classificação: Sobrepeso\n")
      } senao se (imc >=30 e imc < 35) {
        escreva("Classificação: Obesidade Grau I\n")
      } senao se (imc >= 35 e imc < 40) {
        escreva("Classificação: Obesidade Grau II (severa)\n")
      } senao {
      escreva("Classificação: Obesidade Grau III (mórbida)\n")
      }
  
      escreva("\nCuide bem da sua Saúde!\n")
  }
}  
