Algoritmo "aula3-ex14"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/08/2022
Var
// Se��o de Declara��es das vari�veis 
alim,bebida,sobrem:inteiro
valor_alim,valor_bebida,valor_sobrem:real
str_alim,str_bebida,str_sobrem:caractere

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Digite o c�digo da alimenta��o:")
leia(alim)
escreval("Digite o c�digo da bebida:")
leia(bebida)
escreval("Digite o c�digo da sobremesa:")
leia(sobrem)

escolha (alim)
   caso 1
      valor_alim<-14.50
      str_alim<- "Hamburger"
   caso 2
      valor_alim<-15.50
      str_alim<- "Chessburger"
   caso 3
      valor_alim<-10.00
      str_alim<- "Cachorro Quente"
   caso 4
      valor_alim<-13.50
      str_alim<- "Sandu�che Natural"
fimescolha

escolha (bebida)
   caso 5
      valor_bebida<-5.00
      str_bebida<- "Refrigerante"
   caso 6
      valor_bebida<-6.00
      str_bebida<- "Suco de Laranja"
fimescolha

escolha (sobrem)
   caso 7
      valor_sobrem<-10.50
      str_sobrem<- "Milk shake"
   caso 8
      valor_sobrem<-13.00
      str_sobrem<- "Sundae"
   caso 9
      valor_sobrem<-10.00
      str_sobrem<- "Casquinha"
fimescolha

se (alim > 4) ou (bebida < 5) ou (bebida > 6) ou (sobrem < 7) entao
   escreval("C�digo inv�lido ou repeti��o de um item!")
senao
   escreval(str_alim)
   escreval(valor_alim)
   escreval(str_bebida)
   escreval(valor_bebida)
   escreval(str_sobrem)
   escreval(valor_sobrem)
   escreval("Total a pagar: ", valor_alim + valor_bebida + valor_sobrem)
fimse

Fimalgoritmo