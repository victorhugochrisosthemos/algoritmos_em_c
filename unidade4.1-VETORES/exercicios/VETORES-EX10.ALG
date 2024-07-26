Algoritmo "vetores-ex10"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/10/2022
Var
   // Seção de Declarações das variáveis
    n,i,j,a,b:inteiro
   v:vetor[1..100] de inteiro
   w:vetor[1..100] de inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   repita
      escreval("Informe a quantidade N de elementos do vetor X:")
      leia(n)
   ate (n > 0) e (n <= 100)
   para i de 1 ate n faca
      escreval("Iteração ",i)
      escreval("Informe um valor:")
      leia(v[i])
   fimpara
   para i de 1 ate n faca
      para j de 1 ate v[i] faca
         se v[i] mod j = 0 entao
            a <- a + 1
         fimse
      fimpara
      se a <= 2 entao
         b <- b + 1
         w[b] <- v[i]
      fimse
      a <- 0
   fimpara
   escreva("Vetor informado = ")
   para i de 1 ate n faca
      escreva(v[i], " ")
   fimpara
   escreval(" ")
   escreva("Vetor dos valores primos = ")
   para i de 1 ate b faca
      escreva(w[i], " ")
   fimpara

Fimalgoritmo