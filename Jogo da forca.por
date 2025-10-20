programa {
    inclua biblioteca Texto --> txt
    inclua biblioteca Tipos --> tp

    funcao inicio() {
        cadeia palavraSecreta = "PROGRAMAR"
        cadeia palavraParcial = ""
        cadeia letra
        inteiro tentativas = 6
        inteiro tam, i
        logico acertou = falso

        tam = txt.numero_caracteres(palavraSecreta)

        // inicializa com underscores
        para (i = 0; i < tam; i = i + 1) {
            palavraParcial = palavraParcial + "_"
        }

        enquanto (tentativas > 0 e nao acertou) {
            escreva("\nPalavra: ", palavraParcial)
            escreva("Tentativas restantes: ", tentativas)
            escreva("Digite uma letra: ")
            leia(letra)
            letra = txt.caixa_alta(letra)

            se (txt.numero_caracteres(letra) > 0) {
                // pega primeiro caractere (como cadeia)
                cadeia letra1 = tp.caracter_para_cadeia(txt.obter_caracter(letra, 0))

                logico encontrou = falso
                cadeia novaPalavra = ""

                para (i = 0; i < tam; i = i + 1) {
                    cadeia atual = tp.caracter_para_cadeia(txt.obter_caracter(palavraSecreta, i))
                    cadeia prev = tp.caracter_para_cadeia(txt.obter_caracter(palavraParcial, i))

                    se (atual == letra1) {
                        novaPalavra = novaPalavra + atual
                        encontrou = verdadeiro
                    } senao {
                        novaPalavra = novaPalavra + prev
                    }
                }

                se (encontrou) {
                    escreva("✅ Boa! Você acertou uma letra.")
                    palavraParcial = novaPalavra
                } senao {
                    escreva("❌ Letra errada!")
                    tentativas = tentativas - 1
                }

                se (palavraParcial == palavraSecreta) {
                    acertou = verdadeiro
                }
            } senao {
                escreva("Entrada vazia — digite ao menos uma letra.")
            }
        }

        se (acertou) {
            escreva("\n🎉 Parabéns! Você acertou a palavra: ", palavraSecreta)
        } senao {
            escreva("\n💀 Fim de jogo! A palavra era: ", palavraSecreta)
        }
    }
}