Algoritmo "TrocarValoresDeVetoresSemVarAuxiliar"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/11/2022
Var
// Seção de Declarações das variáveis 
x, y:vetor[1..1] de real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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