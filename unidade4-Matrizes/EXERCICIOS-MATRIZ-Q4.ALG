Algoritmo "exercicios-matriz-q4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/12/2022
Var
   // Seção de Declarações das variáveis
   matrix:vetor[1..15,1..25] de real
   matrix_b:vetor[1..25,1..25] de real
   i,j,n,m:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   repita
      escreval("Informe a quantidade de linhas da matriz:")
      leia(n)
   ate (n >= 1) e (n <= 15)
   repita
      escreval("Informe a quantidade de colunas da matriz:")
      leia(m)
   ate (m >= 1) e (m <= 25)

   para i de 1 ate n faca
      para j de 1 ate m faca
         matrix[i,j] <- randi(10)
      fimpara
   fimpara
   escreval("Matriz original")
   para i de 1 ate n faca
      para j de 1 ate m faca
         escreva(matrix[i,j], " ")
      fimpara
      escreval(" ")
   fimpara

   para i de 1 ate m faca
      para j de 1 ate n faca
         matrix_b[i,j] <- matrix[j,i]
      fimpara
      escreval(" ")
   fimpara

   escreval("Matriz B (matriz transposta de A)")
   para i de 1 ate m faca
      para j de 1 ate n faca
         escreva(matrix_b[i,j], " ")
      fimpara
      escreval(" ")
   fimpara

   escreval(" ")
   se n = m entao
      para i de 1 ate n faca
         para j de 1 ate n faca
            se matrix[i,j] = matrix[j,i] entao
               contador <- contador + 1
            fimse
         fimpara
      fimpara
      se contador = n entao
         escreval("Matriz A é simétrica")
      senao
         escreval("Matriz A não é simétrica")
      fimse
   senao
      escreval("Matriz A não é simétrica")
   fimse

Fimalgoritmo