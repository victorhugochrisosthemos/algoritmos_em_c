Algoritmo "exercicios-matriz-q2"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/11/2022
Var
// Seção de Declarações das variáveis 
matrix:vetor[1..15,1..25] de inteiro
soma:vetor[1..15] de inteiro
n,m,i,j:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
repita
   escreva("N: ")
   leia(n)
ate (n >= 1) e (n <= 15)
repita
   escreva("M: ")
   leia(m)
ate (m >= 1) e (m <= 25)

para i de 1 ate n faca
    para j de 1 ate m faca
        matrix[i,j] <- randi(10)
    fimpara
fimpara

para i de 1 ate n  faca
    para j de 1 ate m faca
        soma[i]  <- soma[i] + matrix[i,j]
    fimpara
fimpara

para i de 1 ate n faca
    para j de 1 ate m faca
        escreva(matrix[i,j], " ")
    fimpara
    escreval(" ")
fimpara
escreval(" ")

escreval("Vetor resultante da soma dos elementos de cada linha da matrix")
para i de 1 ate n faca
   escreval("Linha ", i, " = ", soma[i])
fimpara

Fimalgoritmo