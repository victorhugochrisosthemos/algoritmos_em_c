Algoritmo "aula2-ex8"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 31/08/2022
Var
// Se��o de Declara��es das vari�veis 
d,x1,y1,x2,y2:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreva("Digite o valor de X do ponto 1:")
leia(x1)
escreva("Digite o valor de Y do ponto 1:")
leia(y1)
escreva("Digite o valor de X do ponto 2:")
leia(x2)
escreva("Digite o valor de Y do ponto 2:")
leia(y2)
d<- RAIZQ((x2-x1)^2+(y2-y1)^2)
escreval("A dist�ncia entre os pontos 1 e 2 �: ",d)


Fimalgoritmo