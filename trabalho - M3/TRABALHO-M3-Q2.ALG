Algoritmo "trabalho-m3-q2"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/11/2022
Var
   // Seção de Declarações das variáveis
   i,j,a:inteiro
   d:vetor[1..10] de real
   achou: logico

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("Informe 10 elementos do vetor D:")
   para i de 1 ate 10 faca
      escreva("D[",i,"]")
      leia(d[i])
   fimpara
   escreva("Entrada do vetor D = ")
   para i de 1 ate 10 faca
      escreva(d[i], " ")
   fimpara
   escreval(" ")

   para i de 1 ate 10 faca
      se d[i] <= 0 entao
           d[i] <- 0
           para j de i ate 10 faca
                 se (d[j] > 0) e (achou = falso) entao
                       d[j] <- d[j] + d[i]
                       d[i] <- d[j] - d[i]
                       d[j] <- d[j] - d[i]
                       achou <- verdadeiro
                 fimse
           fimpara
           achou <- falso
      fimse
   fimpara

   escreva("Saída do vetor D = ")
   para i de 1 ate 10 faca
      escreva(d[i], " ")
   fimpara



Fimalgoritmo