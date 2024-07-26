Algoritmo "trabalho-m3-q4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/11/2022
Var
   // Seção de Declarações das variáveis
   r,x:vetor [1..10] de real
   s:vetor [1..20] de real
   i,j,a,k:inteiro
   achou: logico

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("Vetor R")
   para i de 1 ate 10 faca
      escreva("R[",i,"]:")
      leia(r[i])
      //r[i] <- i
   fimpara

   escreval("Vetor S")
   para i de 1 ate 20 faca
      escreva("S[",i,"]:")
      leia(s[i])
      //s[i] <- i + 5
   fimpara

   a <- 1
   para i de 1 ate 10 faca
      para j de 1 ate 20 faca
         achou <- falso
         se r[i] = s[j] entao
            para k de 1 ate a faca
               se r[i] = x[k] entao
                  achou <- verdadeiro
                  interrompa
               fimse
            fimpara
            se nao achou entao
               x[a] <- r[i]
               a <- a + 1
            fimse
            interrompa
         fimse
      fimpara
   fimpara

   escreva("Vetor R = ")
   para i de 1 ate 10 faca
      escreva(r[i]," ")
   fimpara
   escreval(" ")

   escreva("Vetor S = ")
   para i de 1 ate 20 faca
      escreva(s[i]," ")
   fimpara
   escreval(" ")

   escreva("Vetor X = ")
   para i de 1 ate a - 1 faca
      escreva(x[i]," ")
   fimpara


Fimalgoritmo