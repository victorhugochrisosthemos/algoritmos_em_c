Algoritmo "lista-1-ex7"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/08/2022
Var
// Se��o de Declara��es das vari�veis 
nome:caractere
horas_trab, dependentes, sal_bruto, sal_liquido:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Digite o nome do funcion�rio: ")
leia(nome)
escreval("O funcion�rio teve quantas horas trabalhadas? ")
leia(horas_trab)
escreval("O funcion�rio tem quantos dependentes? ")
leia(dependentes)
sal_bruto <- horas_trab*10 + 60*dependentes
sal_liquido <- sal_bruto*(1-0.135)
escreval(nome, " possui: ")
escreval("Sal�rio bruto: ", sal_bruto:6:2)
escreval("Sal�rio l�quido: ", sal_liquido:6:2)

Fimalgoritmo