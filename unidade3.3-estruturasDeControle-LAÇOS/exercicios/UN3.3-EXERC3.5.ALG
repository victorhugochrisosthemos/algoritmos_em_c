Algoritmo "UN3.3-EXERC3.5"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/09/2022
Var
   // Se��o de Declara��es das vari�veis
   n,contador,soma,anterior1, anterior2:inteiro

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
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