Algoritmo "lista-1-ex8"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/08/2022
Var
// Se��o de Declara��es das vari�veis 
x_um, y_um, x_dois, y_dois, d: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Sobre o ponto 1, digite o valor de seu X: ")
leia(x_um)
escreval("Sobre o ponto 1, digite o valor de seu Y: ")
leia(y_um)
escreval("Sobre o ponto 2, digite o valor de seu X: ")
leia(x_dois)
escreval("Sobre o ponto 2, digite o valor de seu Y: ")
leia(y_dois)
d <- RaizQ( (x_dois-x_um)^2 + (y_dois-y_dois)^2 )
escreva("A dist�ncia  entre o ponto 1 e o ponto 2 �: ", d)
escreva(" unidade de medida")
Fimalgoritmo