Algoritmo "exercicios-matriz-q1"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/11/2022
Var
// Seção de Declarações das variáveis 
matrix:vetor[1..10,1..10] de inteiro
multiplique:vetor[1..10] de inteiro
i,j,m,segunda, soma, diagonal, p,q:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
repita
   escreval("Informe a ordem da matriz")
   leia(m)
ate (m >= 1) e (m <= 10)

repita
   escreval("Permutar quais linhas?")
   escreva("Linha 1:")
   leia(p)
ate (p >= 1) e (p <= 10)
repita
   escreva("Linha 2:")
   leia(q)
ate (q >= 1) e (q <= 10)

para i de 1 ate m faca
   para j de 1 ate m faca
          escreva("Matrix[",i,",",j,"]:")
          leia(matrix[i,j])
   fimpara
fimpara
escreval(" ")
escreval("Matriz original")
para i de 1 ate m faca
    para j de 1 ate m faca
         escreva(matrix[i,j], " ")
         se j mod m = 0 entao
              escreval(" ")
         fimse
    fimpara
fimpara
escreval(" ")

para i de 1 ate m faca
   segunda <- segunda + matrix[i,2]
fimpara
escreval("Soma da segunda coluna: ", segunda)
escreval(" ")

para i de 1 ate m faca
   multiplique[i] <- 1
   para j de 1 ate m faca
       multiplique[i] <- multiplique[i] *  matrix[i,j]
   fimpara
fimpara

para i de 1 ate m faca
    escreval("Linha ", i, " = ", multiplique[i])
fimpara
escreval(" ")

para i de 1 ate m faca
     para j de 1 ate m faca
         soma <- soma + matrix[i][j]
     fimpara
fimpara
escreval("Soma = ", soma)
escreval(" ")

para i de 1 ate m faca
    para j de 1 ate m faca
        se i = j entao
           diagonal <- diagonal + matrix[i,j]
        fimse
    fimpara
fimpara
escreval("Soma da diagonal principal = ", diagonal)
escreval(" ")

para i de 1 ate m faca
   matrix[p,i] <-  matrix[p,i] + matrix[q,i]
   matrix[q,i] <-  matrix[p,i] - matrix[q,i]
   matrix[p,i] <-  matrix[p,i] - matrix[q,i]
fimpara

escreval(" ")
escreval("Matriz permutada")
para i de 1 ate m faca
    para j de 1 ate m faca
         escreva(matrix[i,j], " ")
         se j mod m = 0 entao
              escreval(" ")
         fimse
    fimpara
fimpara
escreval(" ")

Fimalgoritmo