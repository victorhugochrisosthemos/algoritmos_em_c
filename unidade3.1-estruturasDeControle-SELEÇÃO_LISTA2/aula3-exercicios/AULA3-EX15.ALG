Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/08/2022
Var
// Se��o de Declara��es das vari�veis 
opcao:caractere
b,h,l,area:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Digite uma das op��es: T, Q ou R (mai�scula)")
leia(opcao)

se (opcao = "T") entao
   escreval("Digite a base do tri�ngulo:")
   leia(b)
   escreval("Digite a altura do tri�ngulo:")
   leia(h)
   area<- b*h/2
   escreval("A �rea do tri�ngulo �: ",area)
fimse

se (opcao = "Q") entao
   escreval("Digite o lado do quadrado:")
   leia(l)
   area<- exp(l,2)
   escreval("A �rea do quadrado �: ",area)
fimse
se (opcao = "R") entao
   escreval("Digite a base do ret�ngulo:")
   leia(b)
   escreval("Digite a altura do ret�ngulo:")
   leia(h)
   area<- b*h
   escreval("A �rea do quadrado �: ",area)
fimse

Fimalgoritmo