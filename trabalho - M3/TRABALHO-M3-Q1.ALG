Algoritmo "trabalho-m3-q1"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/11/2022
Var
   // Se��o de Declara��es das vari�veis
   r:vetor [1..5] de inteiro
   a:vetor [1..10] de inteiro
   i, j,b, k: inteiro
   mais: caractere
   m: logico

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreval("Informe os 5 elementos gabarito da LOTO:")
   para i de 1 ate 5 faca
      repita
         m <- verdadeiro
         escreva("R[", i,"]:")
         leia(r[i])
         para k de i - 1 ate 1 passo -1 faca
            se r[i] = r[k] entao
               escreval(r[i]," j� foi digitado, digite outro n�mero")
               m <- falso
            fimse
         fimpara
      ate (r[i] > 0) e (m = verdadeiro) e (r[i] <= 60)
   fimpara
   repita
      escreval("Informe 10 elementos da aposta:")
      para i de 1 ate 10 faca
         repita
            m <- verdadeiro
            escreva("A[",i,"]:")
            leia(a[i])
            para k de i - 1 ate 1 passo -1 faca
               se a[i] = a[k] entao
                  escreval(a[i]," j� foi digitado, digite outro n�mero")
                  m <- falso
               fimse
            fimpara
         ate (a[i] > 0) e (m = verdadeiro) e (a[i] <= 60)
      fimpara
      para i de 1 ate 5 faca
         para j de 1 ate 10 faca
            se r[i] = a[j] entao
               b <- b + 1
            fimse
         fimpara
      fimpara
      escreval(b," pontos")
      escreval("Mais uma aposta? S|N")
      leia(mais)
   ate maiusc(mais) = "N"

Fimalgoritmo