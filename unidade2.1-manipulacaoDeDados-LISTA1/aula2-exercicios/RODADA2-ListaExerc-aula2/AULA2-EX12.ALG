Algoritmo "aula2-ex12"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 31/08/2022
Var
// Se��o de Declara��es das vari�veis 
x,y,a,b,c,d,letraE,f:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreva("Digite o valor de A: ")
leia(a)
escreva("Digite o valor de B: ")
leia(b)
escreva("Digite o valor de C: ")
leia(c)
escreva("Digite o valor de D: ")
leia(d)
escreva("Digite o valor de E: ")
leia(letraE)
escreva("Digite o valor de F: ")
leia(f)
x <- (c*letraE - b*f)/(a*letraE - b*d)
y <- (a*f-c*d)/(a*letraE - b*d)
escreval("Valor de X: ",x)
escreva("Valor de Y: ",y)

Fimalgoritmo