Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/08/2022
Var
// Se��o de Declara��es das vari�veis 
a,b,c,delta:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Escreva o valor de A da fun��o quadr�tica:")
leia(a)
escreval("Escreva o valor de B da fun��o quadr�tica:")
leia(b)
escreval("Escreva o valor de C da fun��o quadr�tica:")
leia(c)

delta <- Exp(b,2)  - 4*a*c

se (delta > 0) entao
   se (delta = 0) entao
      escreval("A fun��o quadr�tica possui 2 ra�zes reais!")
   senao
      escreval("A fun��o quadr�tica possui 1 raiz real!")
   fimse
senao
   escreval("A fun��o quadr�tica n�o possui raiz real!")
fimse


Fimalgoritmo