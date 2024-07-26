Algoritmo "lista-1-ex10"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/08/2022
Var
// Seção de Declarações das variáveis 
sal_bruto, sal_liquido: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Informe o salário bruto do funcionário: ")
leia(sal_bruto)
sal_liquido <- sal_bruto*(1-0.4)
escreval("O salário líquido do funcionário é: ", sal_liquido)

Fimalgoritmo