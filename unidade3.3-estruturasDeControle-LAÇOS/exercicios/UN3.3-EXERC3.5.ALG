Algoritmo "UN3.3-EXERC3.5"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/09/2022
Var
   // Seção de Declarações das variáveis
   n,contador,soma,anterior1, anterior2:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   repita
      escreva("Quantos termos? ")
      leia(n)
      anterior1 <- 1
      escreval(anterior1)
      anterior2 <- 1
      escreval(anterior2)
      para contador de 1 ate n faca
         soma <- anterior1 + anterior2
         anterior1 <- anterior2
         anterior2 <- soma
         escreval(soma)
      fimpara
   ate n >= 2

Fimalgoritmo