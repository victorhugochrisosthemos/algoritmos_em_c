Algoritmo "aula2-ex3"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 31/08/2022
Var
// Se��o de Declara��es das vari�veis 
a,b,c,p,area:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreva("Digite o primeiro lado do tri�ngulo: ")
leia(a)
escreva("Digite o segundo lado do tri�ngulo: ")
leia(b)
escreva("Digite o terceiro lado do tri�ngulo: ")
leia(c)
p<- (a+b+c)/2
area<- RAIZQ(p*(p-a)*(p-b)*(p-c))
escreva("�rea do tri�ngulo: ",area)


Fimalgoritmo