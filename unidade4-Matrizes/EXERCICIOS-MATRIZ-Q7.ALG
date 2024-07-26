Algoritmo "exercicios-matriz-q7"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/12/2022
Var
   // Seção de Declarações das variáveis
   n,i,j:inteiro
   matrix:vetor[1..12,1..10] de real
   custo:vetor[1..12,1..10] de real
   venda:vetor[1..12,1..10] de real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   repita
      escreva("Informe a quantidade de tipos de motores:")
      leia(n)
   ate (n >= 1) e (n <= 10)

   para i de 1 ate 12 faca
      para j de 1 ate n faca
         repita
            matrix[i,j] <- randi(10)
         ate matrix[i,j] > 0
         repita
         custo[i,j] <- randi(200)
      ate custo[i,j] > 50
      repita
         venda[i,j] <- randi(1000)
      ate venda[i,j] > 50
      fimpara
   fimpara

   para i de 1 ate 12 faca
      para j de 1 ate n faca
         repita
            escreva(matrix[i,j], "  ")
         ate matrix[i,j] > 0
      fimpara
      escreval("  ")
   fimpara

   escreval("  ")
   escreval("Custo dos motores")
   para i de 1 ate 12 faca
      escreva("Mês",i,": ")
      para j de 1 ate n faca
           escreva(custo[i,j],"   ")
      fimpara
      escreval("  ")
   fimpara

   escreval("  ")
   escreval("Valor de venda dos motores")
   para i de 1 ate 12 faca
      escreva("Mês",i,": ")
      para j de 1 ate n faca
           escreva(venda[i,j],"   ")
      fimpara
      escreval("  ")
   fimpara
   
   escreval("  ")
   escreval("Receita líquida")
   para i de 1 ate 12 faca
      escreva("Mês",i,": ")
      para j de 1 ate n faca
           escreva(venda[i,j] - custo[i,j],"   ")
      fimpara
      escreval("  ")
   fimpara


Fimalgoritmo