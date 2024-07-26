Algoritmo "aula2-ex6"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 31/08/2022
Var
// Seção de Declarações das variáveis 
horas,valor,salBruto:real
dep:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Quantas horas no  mês o funcionário trabalhou? ")
leia(horas)
escreva("Quanto ele recebe por hora? ")
leia(valor)
escreva("Possui quantos dependentes? ")
leia(dep)
salBruto<- horas*valor*(1 + 10*dep/100)
escreva("O salário bruto é: ",salBruto)


Fimalgoritmo