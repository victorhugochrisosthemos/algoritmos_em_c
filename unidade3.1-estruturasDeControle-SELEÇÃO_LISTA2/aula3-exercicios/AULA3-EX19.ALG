Algoritmo "aula3-ex19"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/08/2022
Var
// Se��o de Declara��es das vari�veis 
func,cat:caractere
sal_atual,sal_novo:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Qual o nome do funcion�rio?")
leia(func)
escreval("Qual a categoria dele? (Letra mai�scula)")
leia(cat)
escreval("Qual o sal�rio atual dele?")
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

escreval("Funcion�rio: ",func)
escreval("Categoria: ",cat)
escreval("Sal�rio reajustado: ", sal_novo)


Fimalgoritmo