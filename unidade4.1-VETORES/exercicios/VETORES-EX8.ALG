Algoritmo "vetores-ex8"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/10/2022
Var
// Se��o de Declara��es das vari�veis 
n,i,j,aux:inteiro
v:vetor[1..15] de inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
repita
     escreval("Informe a quantidade de termos N do vetor: ")
     leia(n)
ate (n > 0) e (n < 16)
para i de 1 ate n faca
  escreval("Itera��o ",i)
  escreval("Informe um valor:")
  escreval("-----------------------")
  leia(v[i])
fimpara
escreva("Vetor original = ")
para i de 1 ate n faca
    escreva(v[i], " ")
fimpara
escreval(" ")
para j de 1 ate 100 faca
    para i de n ate 2 passo -1 faca
          se v[i] < v[i - 1]  entao
               aux <- v[i - 1]
               v[i - 1] <- v[i]
               v[i] <- aux
          fimse
    fimpara
fimpara
escreva("Vetor em ordem crescente = ")
para i de 1 ate n faca
    escreva(v[i], " ")
fimpara

Fimalgoritmo