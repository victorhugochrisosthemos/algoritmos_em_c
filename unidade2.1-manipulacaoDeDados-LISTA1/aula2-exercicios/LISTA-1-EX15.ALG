Algoritmo "lista-1-ex15"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/08/2022
Var
// Se��o de Declara��es das vari�veis 
valor, recebido, troco,cem,dez,um:inteiro // tava dando problema de tipagem

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
escreval("Qual o valor da compra? ")
leia(valor)
escreval("Qual o valor recebido? ")
leia(recebido)

cem <- 0
dez <- 0
um <- 0

troco<-(recebido-valor)

se (troco>=100) entao
   cem<- troco div 100 // div faz receber somente valor inteiro
   troco <- troco - cem*100
fimse

se (troco>=10) entao
   dez<-troco div 10
   troco<-troco - dez*10
fimse

se (troco>=1) entao
   um<- troco
fimse

escreval(cem, " notas de 100")
escreval(dez, " notas de 10")
escreval(um, " notas de 1")


Fimalgoritmo