Algoritmo "trabalho-m3-q4"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/11/2022
Var
   // Se��o de Declara��es das vari�veis
   r,x:vetor [1..10] de real
   s:vetor [1..20] de real
   i,j,a,k:inteiro
   achou: logico

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreval("Vetor R")
   para i de 1 ate 10 faca
      escreva("R[",i,"]:")
      leia(r[i])
   fimpara

   escreval("Vetor S")
   para i de 1 ate 20 faca
      escreva("S[",i,"]:")
      leia(s[i])
   fimpara

   a <- 1
   para i de 1 ate 10 faca
      para j de 1 ate 20 faca
         achou <- falso
         se r[i] = s[j] entao
            para k de 1 ate a faca
               se r[i] = x[k] entao
                  achou <- verdadeiro
               fimse
            fimpara
            se nao achou entao
               x[a] <- r[i]
               a <- a + 1
            fimse
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