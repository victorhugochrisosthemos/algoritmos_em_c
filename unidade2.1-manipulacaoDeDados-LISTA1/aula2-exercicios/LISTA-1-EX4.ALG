Algoritmo "lista-1-ex4"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/08/2022
Var
// Se��o de Declara��es das vari�veis 
cateto_um, cateto_dois, hipotenusa: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Escreva o comprimento do cateto 1: ")
leia(cateto_um)
escreval("Escreva o comprimento do cateto 2: ")
leia(cateto_dois)
hipotenusa <- RaizQ(cateto_um^2 + cateto_dois^2)
escreval("A Hipotenusa �: ", hipotenusa)

Fimalgoritmo