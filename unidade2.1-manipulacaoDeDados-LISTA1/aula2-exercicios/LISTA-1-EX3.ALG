Algoritmo "lista-1-ex3"
// Disciplina  :  [Linguagem e L�gica de Programa��o] 
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/08/2022
Var
// Se��o de Declara��es das vari�veis 
a, b, c, p, area: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Informe o valor do lado A do tri�ngulo ABC:")
leia(a)
escreval("Informe o valor do lado B do tri�ngulo ABC:")
leia(b)
escreval("Informe o valor do lado B do tri�ngulo ABC:")
leia(c)
p <- (a+b+c)/2
area <- RaizQ(p*(p-a)*(p-b)*(p-c))
escreval("A �rea do tri�ngulo ABC �: ", area)

Fimalgoritmo