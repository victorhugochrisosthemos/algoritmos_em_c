Algoritmo "TrocarValoresDeVetoresSemVarAuxiliar"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/11/2022
Var
// Se��o de Declara��es das vari�veis 
x, y:vetor[1..1] de real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Informe um valor para o vetor X:")
leia(x[1])
escreval("Informe um valor para o vetor Y:")
leia(y[1])
escreval("------------------------------------")
escreval("X[1] = ",x[1])
escreval("Y[1] = ",y[1])
escreval("------------------------------------")

x[1] <- x[1] + y[1]
y[1] <- x[1] - y[1]
x[1] <- x[1] - y[1]

escreval("X[1] = ",x[1])
escreval("Y[1] = ",y[1])

Fimalgoritmo