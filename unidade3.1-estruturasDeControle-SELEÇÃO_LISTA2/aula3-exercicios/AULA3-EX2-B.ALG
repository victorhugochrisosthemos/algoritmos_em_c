Algoritmo "aula3-ex2-a"
//
//
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/08/2022
Var
// Se��o de Declara��es das vari�veis
a,b,c,max:inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
escreval("Digite o valor A:")
leia(a)
escreval("Digite o valor B:")
leia(b)
escreval("Digite o valor C:")
leia(c)

se(a>b) ou (a>c) entao
        max<-a
fimse

se(b>a) ou (b>c) entao
        max<-b
fimse

se(c>a) ou (c>b) entao
        max<-c
fimse

escreval("Maior entre",a," ,",b," e",c," :",max)

Fimalgoritmo