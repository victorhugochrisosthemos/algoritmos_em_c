Algoritmo "lista-1-ex6"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/08/2022
Var
// Se��o de Declara��es das vari�veis 
horas, valor_horas, dependentes, salario: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Qual o n�mero de horas trabalhadas no m�s? ")
leia(horas)
escreval("Qual o valor que recebe por hora? ")
leia(valor_horas)
escreval("O funcion�rio possui quantos dependentes? ")
leia(dependentes)
salario <- horas*valor_horas + (horas*valor_horas)*0.1*dependentes
escreval("O sal�rio bruto do funcion�rio �: ", salario)

Fimalgoritmo