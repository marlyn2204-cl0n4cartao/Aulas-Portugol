/*Desenvolva um programa que pergunte ao usuario seu nome, 
depois sua data de nascimento, e por final mostre na tela o seu nome e a idade que ele irá atingir este ano.*/

programa {
  funcao inicio() {

    cadeia nome
    inteiro idade, anoAtual, anoNasc
  
    escreva("Digite o seu nome: ")
    leia(nome)

    escreva("Digite o ano atual: ")
    leia(anoAtual)
    
    escreva("Digite o ano do seu nascimento: ")
    leia(anoNasc)

    idade = anoAtual - anoNasc

    escreva("Olá ", nome, ", você irá atingir este ano a idade de ", idade , " anos.")
  }
}
