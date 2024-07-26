Algoritmo "aula3-ex19"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/08/2022
Var
// Seção de Declarações das variáveis 
func,cat:caractere
sal_atual,sal_novo:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Qual o nome do funcionário?")
leia(func)
escreval("Qual a categoria dele? (Letra maiúscula)")
leia(cat)
escreval("Qual o salário atual dele?")
leia(sal_atual)

se (cat = "A") ou (cat = "C") ou (cat = "F") ou (cat = "H") entao
   sal_novo<- sal_atual*1.1
fimse
se (cat = "B") ou (cat = "D") ou (cat = "E") ou (cat = "G") entao
   sal_novo<- sal_atual*1.15
fimse
se (cat = "I") ou (cat = "K") ou (cat = "R") entao
   sal_novo<- sal_atual*1.2
fimse
se (cat = "J") ou (cat = "S") ou (cat = "G") entao
   sal_novo<- sal_atual*1.25
fimse

escreval("Funcionário: ",func)
escreval("Categoria: ",cat)
escreval("Salário reajustado: ", sal_novo)


Fimalgoritmo