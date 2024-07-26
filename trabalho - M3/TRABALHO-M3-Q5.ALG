Algoritmo "trabalho-m3-q5"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/11/2022
Var
   // Seção de Declarações das variáveis
   r:vetor [1..10] de real
   p,i:inteiro
   x:real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("Vetor R")
   para i de 1 ate 9 faca
      escreva("R[",i,"]:")
      leia(r[i])
   fimpara
   escreval("Informe o valor de X:")
   leia(x)
   repita
      escreval("Informe o valor de P:")
      leia(p)
      se (p <= 0) ou (p > 9) entao
          escreval("Valor de P somente entre 1 até 9")
      fimse
   ate (p > 0) e (p < 9)
   
   para i de 10 ate p + 1 passo -1 faca
       r[i] <- r[i] + r[i-1]
       r[i-1] <- r[i] - r[i-1]
       r[i] <- r[i] - r[i-1]
   fimpara
   r[p] <- x

   escreva("Vetor R = ")
   para i de 1 ate 10 faca
      escreva(r[i]," ")
   fimpara
   escreval(" ")

   escreval("Valor de X = ", x)

   escreval("Valor de P = ", p)

Fimalgoritmo