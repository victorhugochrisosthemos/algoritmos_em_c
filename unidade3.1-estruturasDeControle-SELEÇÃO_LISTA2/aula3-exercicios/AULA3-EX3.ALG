Algoritmo "lista3-ex3"
//  
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/08/2022
Var
// Seção de Declarações das variáveis 
a,b,c,ap,bp,cp,media,numerador,denominador:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o valor A:")
leia(a)
escreval("Digite o valor B:")
leia(b)
escreval("Digite o valor C:")
leia(c)


se(a > b) e (a > c) entao
     ap<-5
     se(b > c) entao
          bp<-5/2
          cp<-2
     senao
          cp<-5/2
          bp<-2
     fimse
     senao
        se(b > a) e (b > c) entao
           bp<-5
              se(a > c) entao
                   ap<-5/2
                   cp<-2
              senao
                   cp<-5/2
                   ap<-2
              fimse
        fimse
     senao
          bp<-5
        se(a > c) entao
             ap<-5/2
             cp<-2
        senao
             cp<-5/2
             ap<-2
        fimse
fimse

numerador<- (ap*a+bp*b+cp*c)
denominador<- ap+bp+cp
media<- numerador/denominador

escreval(media)

Fimalgoritmo