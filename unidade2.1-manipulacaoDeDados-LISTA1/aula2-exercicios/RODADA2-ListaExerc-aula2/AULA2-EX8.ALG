Algoritmo "aula2-ex8"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 31/08/2022
Var
// Seção de Declarações das variáveis 
d,x1,y1,x2,y2:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite o valor de X do ponto 1:")
leia(x1)
escreva("Digite o valor de Y do ponto 1:")
leia(y1)
escreva("Digite o valor de X do ponto 2:")
leia(x2)
escreva("Digite o valor de Y do ponto 2:")
leia(y2)
d<- RAIZQ((x2-x1)^2+(y2-y1)^2)
escreval("A distância entre os pontos 1 e 2 é: ",d)


Fimalgoritmo