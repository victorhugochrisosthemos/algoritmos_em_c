Algoritmo "aula2-ex7"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 31/08/2022
Var
// Se��o de Declara��es das vari�veis 
nome:caractere
horas,salBruto,salLiquido:real
dep:inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreva("Digite o nome no funcion�rio: ")
leia(nome)
escreva("Qual o n�mero de horas trabalhadas no m�s? ")
leia(horas)
escreva("Qual o n�mero de dependentes do funcion�rio? ")
leia(dep)
salBruto<- horas*10 + 60*dep
salLiquido<- salBruto - salBruto*0.085 - salBruto*0.05
escreval("Funcion�ro: ",nome)
escreval("Sal�rio bruto: ",salBruto)
escreval("Sal�rio l�quido: ",salLiquido)

Fimalgoritmo