Algoritmo "lista-1-ex12"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/08/2022
Var
// Se��o de Declara��es das vari�veis 
a,b,c,d,letra_e,f,x,y:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Informe o valor de A: ")
leia(a)
escreval("Informe o valor de B: ")
leia(b)
escreval("Informe o valor de C: ")
leia(c)
escreval("Informe o valor de D: ")
leia(d)
escreval("Informe o valor de E: ")
leia(letra_e)
escreval("Informe o valor de F: ")
leia(f)
x <- (c * letra_e - b * f)/(a * letra_e + b * d)
y <- (a*f - c*d)/(a*letra_e - b*d)
escreval ("O valor de X �: ",x:6:2)
escreval ("O valor de Y �: ",y:6:2)

Fimalgoritmo