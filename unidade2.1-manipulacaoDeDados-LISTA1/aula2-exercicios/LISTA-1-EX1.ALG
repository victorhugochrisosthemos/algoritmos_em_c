Algoritmo "lista-1-ex1"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/08/2022
Var
// Seção de Declarações das variáveis 
   raio, area, comprimento: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escreval("Escreva o raio da circunferência: ")
   leia(raio)

   area<- pi * raio ^ 2
   comprimento<- 2*PI*raio
   escreval("Área: ", area)
   escreval("Cumprimento: ", comprimento)

Fimalgoritmo