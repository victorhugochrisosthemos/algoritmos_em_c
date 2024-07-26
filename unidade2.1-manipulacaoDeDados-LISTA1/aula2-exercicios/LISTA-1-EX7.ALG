Algoritmo "lista-1-ex7"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/08/2022
Var
// Seção de Declarações das variáveis 
nome:caractere
horas_trab, dependentes, sal_bruto, sal_liquido:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o nome do funcionário: ")
leia(nome)
escreval("O funcionário teve quantas horas trabalhadas? ")
leia(horas_trab)
escreval("O funcionário tem quantos dependentes? ")
leia(dependentes)
sal_bruto <- horas_trab*10 + 60*dependentes
sal_liquido <- sal_bruto*(1-0.135)
escreval(nome, " possui: ")
escreval("Salário bruto: ", sal_bruto:6:2)
escreval("Salário líquido: ", sal_liquido:6:2)

Fimalgoritmo