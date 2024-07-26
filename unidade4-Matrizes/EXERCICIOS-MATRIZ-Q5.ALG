Algoritmo "exercicios-matriz-q5"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/12/2022
Var
   // Seção de Declarações das variáveis
   n,m,p,q,i,j:inteiro
   matrix_a:vetor[1..10,1..10] de inteiro
   matrix_b:vetor[1..10,1..10] de inteiro
   matrix_final:vetor[1..10,1..10] de inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   repita
      escreval("Matriz A")
      escreva("Informe a quantidade de linhas:")
      leia(n)
   ate (n >= 2) e (n <= 10)
   repita
      escreval("Matriz A")
      escreva("Informe a quantidade de colunas:")
      leia(m)
   ate (m >= 2) e (m <= 10)
   repita
      escreval("Matriz B")
      escreva("Informe a quantidade de linhas:")
      leia(p)
   ate (p >= 2) e (p <= 10)
   repita
      escreval("Matriz B")
      escreva("Informe a quantidade de colunas:")
      leia(q)
   ate (q >= 2) e (q <= 10)

   para i de 1 ate n faca
      para j de 1 ate m faca
         matrix_a[i,j] <- randi(10)
      fimpara
   fimpara

   escreval(" ")
   escreval("Matriz A")
   para i de 1 ate n faca
      para j de 1 ate m faca
         escreva(matrix_a[i,j])
      fimpara
      escreval(" ")
   fimpara

   para i de 1 ate p faca
      para j de 1 ate q faca
         matrix_b[i,j] <- randi(10)
      fimpara
   fimpara

   escreval(" ")
   escreval("Matriz B")
   para i de 1 ate p faca
      para j de 1 ate q faca
         escreva(matrix_b[i,j])
      fimpara
      escreval(" ")
   fimpara

   escreval(" ")
   escreval("A x B")
   se m = p entao
      para i de 1 ate n faca
         para j de 1 ate p faca
            matrix_final[i,j] <- matrix_final[i,j] + matrix_a[i,j]*matrix_b[j,i]
         fimpara
      fimpara
      para i de 1 ate n faca
         para j de 1 ate p faca
            escreva(matrix_final[i,j], "   ")
         fimpara
         escreval("   ")
      fimpara
   senao
      escreval("Erro")
   fimse

Fimalgoritmo