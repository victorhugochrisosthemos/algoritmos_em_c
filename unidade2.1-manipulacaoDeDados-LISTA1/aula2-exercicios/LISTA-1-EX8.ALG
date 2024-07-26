Algoritmo "lista-1-ex8"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/08/2022
Var
// Seção de Declarações das variáveis 
x_um, y_um, x_dois, y_dois, d: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Sobre o ponto 1, digite o valor de seu X: ")
leia(x_um)
escreval("Sobre o ponto 1, digite o valor de seu Y: ")
leia(y_um)
escreval("Sobre o ponto 2, digite o valor de seu X: ")
leia(x_dois)
escreval("Sobre o ponto 2, digite o valor de seu Y: ")
leia(y_dois)
d <- RaizQ( (x_dois-x_um)^2 + (y_dois-y_dois)^2 )
escreva("A distância  entre o ponto 1 e o ponto 2 é: ", d)
escreva(" unidade de medida")
Fimalgoritmo