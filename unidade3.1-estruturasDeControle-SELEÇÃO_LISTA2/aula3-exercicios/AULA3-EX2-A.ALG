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

se(a>b) entao
        se (a>c) entao
             max<-a
        senao
             max<-c
        fimse
        senao
             se (b>c) entao
                max<-b
             senao
                max<-c
             fimse
        escreva("Maio entre",a,",",b," e",c,":",max)
fimse

Fimalgoritmo