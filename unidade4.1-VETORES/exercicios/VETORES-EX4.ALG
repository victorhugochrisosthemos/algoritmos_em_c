Algoritmo "vetores-ex4"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/10/2022
Var
// Se��o de Declara��es das vari�veis 
n,i:inteiro
v:vetor[1..15] de real
maior, menor: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
repita
   escreval("Informe o tamanho N do vetor V:")
   leia(n)
ate (n > 0) e (n < 15)
para i de 1 ate n faca
   escreval("Itera��o ", i)
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