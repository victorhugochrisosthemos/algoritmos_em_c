Algoritmo "aula2-ex6"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 31/08/2022
Var
// Se��o de Declara��es das vari�veis 
horas,valor,salBruto:real
dep:inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreva("Quantas horas no  m�s o funcion�rio trabalhou? ")
leia(horas)
escreva("Quanto ele recebe por hora? ")
leia(valor)
escreva("Possui quantos dependentes? ")
leia(dep)
salBruto<- horas*valor*(1 + 10*dep/100)
escreva("O sal�rio bruto �: ",salBruto)


Fimalgoritmo