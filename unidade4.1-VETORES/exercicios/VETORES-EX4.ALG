Algoritmo "vetores-ex4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/10/2022
Var
// Seção de Declarações das variáveis 
n,i:inteiro
v:vetor[1..15] de real
maior, menor: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
repita
   escreval("Informe o tamanho N do vetor V:")
   leia(n)
ate (n > 0) e (n < 15)
para i de 1 ate n faca
   escreval("Iteração ", i)
   escreval("Informe o valor de V:")
   leia(v[i])
   escreval("-----------------------------")
   se i = 1 entao
      maior <- v[i]
      menor <- v[i]
   senao
      se v[i] > maior entao
          maior <- v[i]
      fimse
      se v[i] < menor entao
          menor <- v[i]
      fimse
   fimse
fimpara
escreva("Vetor V = ")
para i de 1 ate n faca
     escreva(v[i], " ")
fimpara
escreval(" ")
escreval("Maior valor: ", maior)
escreval("Menor valor: ", menor)
Fimalgoritmo