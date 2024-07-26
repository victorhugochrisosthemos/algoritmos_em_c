Algoritmo "exercicios-matriz-q3"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/12/2022
Var
   // Seção de Declarações das variáveis
   matrix:vetor[1..10,1..10] de inteiro
   n,i,j: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   repita
      escreval("Informe a ordem da matriz:")
      leia(n)
   ate (n >= 1) e (n <= 10)
   para i de 1 ate n faca
      para j de 1 ate n faca
         se i = j entao
            se i = 1 entao
               matrix[i,j] <- 10
            senao
               se i = n entao
                  matrix[i,j] <- 20
               senao
                  matrix[i,j] <- 1
               fimse
            fimse
         senao
            se i < j entao
               matrix[i,j] <- 2
            senao
               matrix[i,j] <- 0
            fimse
         fimse
      fimpara
   fimpara


para i de 1 ate n faca
   para j de 1 ate n faca
      escreva(matrix[i,j],"  ")
   fimpara
   escreval(" ")
fimpara


Fimalgoritmo