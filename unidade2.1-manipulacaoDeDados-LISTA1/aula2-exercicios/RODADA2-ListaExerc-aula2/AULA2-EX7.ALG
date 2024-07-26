Algoritmo "aula2-ex7"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 31/08/2022
Var
// Seção de Declarações das variáveis 
nome:caractere
horas,salBruto,salLiquido:real
dep:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite o nome no funcionário: ")
leia(nome)
escreva("Qual o número de horas trabalhadas no mês? ")
leia(horas)
escreva("Qual o número de dependentes do funcionário? ")
leia(dep)
salBruto<- horas*10 + 60*dep
salLiquido<- salBruto - salBruto*0.085 - salBruto*0.05
escreval("Funcionáro: ",nome)
escreval("Salário bruto: ",salBruto)
escreval("Salário líquido: ",salLiquido)

Fimalgoritmo