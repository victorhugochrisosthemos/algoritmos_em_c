Algoritmo "lista-1-ex6"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/08/2022
Var
// Seção de Declarações das variáveis 
horas, valor_horas, dependentes, salario: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Qual o número de horas trabalhadas no mês? ")
leia(horas)
escreval("Qual o valor que recebe por hora? ")
leia(valor_horas)
escreval("O funcionário possui quantos dependentes? ")
leia(dependentes)
salario <- horas*valor_horas + (horas*valor_horas)*0.1*dependentes
escreval("O salário bruto do funcionário é: ", salario)

Fimalgoritmo