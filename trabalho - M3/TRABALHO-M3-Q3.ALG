Algoritmo "trabalho-m3-q3"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/11/2022
Var
// Se��o de Declara��es das vari�veis 
x,y:vetor [1..10] de real
r:vetor [1..20] de real
i,a,b: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Vetor X")
para i de 1 ate 10 faca
     escreva("X[",i,"]:")
     leia(x[i])
fimpara

escreval("Vetor Y")
para i de 1 ate 10 faca
     escreva("Y[",i,"]:")
     leia(y[i])
fimpara

para i de 1 ate 20 faca
     se i mod 2 = 0 entao
        a <- a + 1
        r[i] <- x[a]
     senao
        b<- b + 1
        r[i] <- y[b]
     fimse
fimpara

escreva("Vetor X = ")
para i de 1 ate 10 faca
   escreva(x[i], " ")
fimpara
escreval(" ")

escreva("Vetor Y = ")
para i de 1 ate 10 faca
   escreva(Y[i], " ")
fimpara
escreval(" ")

escreva("Vetor R = ")
para i de 1 ate 20 faca
    escreva(r[i], " ")
fimpara
escreval(" ")

Fimalgoritmo