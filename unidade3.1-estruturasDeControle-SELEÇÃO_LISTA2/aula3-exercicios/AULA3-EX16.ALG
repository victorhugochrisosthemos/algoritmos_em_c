Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/08/2022
Var
// Se��o de Declara��es das vari�veis 
sexo:caractere
altura,ideal:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Qual o seu sexo? M ou F (mai�scula)")
leia(sexo)
escreval("Qual a sua altura?(em metros)")
leia(altura)

se (sexo = "M") entao
   ideal<-72.7*altura - 58
   escreval("Seu peso ideal �: ", ideal:3:2)
senao
   ideal<-62.1*altura - 44.7
   escreval("Seu peso ideal �: ", ideal:3:2)
fimse


Fimalgoritmo