Algoritmo "aula3-ex2-a"
//  
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/08/2022
Var
// Seção de Declarações das variáveis 
a,b,c,max:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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