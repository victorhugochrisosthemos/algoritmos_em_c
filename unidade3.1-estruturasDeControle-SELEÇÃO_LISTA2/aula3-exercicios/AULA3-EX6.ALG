Algoritmo "aula3-ex6"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
//
//
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/08/2022
Var
   // Se��o de Declara��es das vari�veis
   opcao:inteiro
   a,b,c:real

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreval("Escreva o valor de A:")
   leia(a)
   escreval("Escreva o valor de B:")
   leia(b)
   escreval("Escreva o valor de C:")
   leia(c)
   escreval("Escreva qual a op��o:")
   leia(opcao)

   escolha(opcao)
   caso 1
      se (a>b) entao
         se (b>c) entao
            escreval(c, ",",b,",",a)
         senao
            escreval(b, ",",c,",",a)
         fimse
      senao
         se(b>a) entao
            se (a>c) entao
               escreval(c, ",",a,",",b)
            senao
               escreval(a, ",",c,",",b)
            fimse
         senao
            se (b>a) entao
               escreval(a, ",",b,",",c)
            senao
               escreval(b, ",",a,",",c)
            fimse
         fimse
      fimse
   caso 2
      se (a>b) entao
         se (b>c) entao
            escreval(a, ",",b,",",c)
         senao
            escreval(a, ",",c,",",b)
         fimse
      senao
         se(b>a) entao
            se (a>c) entao
               escreval(b, ",",a,",",c)
            senao
               escreval(b, ",",c,",",a)
            fimse
         senao
            se (b>a) entao
               escreval(c, ",",b,",",a)
            senao
               escreval(c, ",",a,",",b)
            fimse
         fimse
      fimse
   caso 3
   
      se (a>b) entao
         se (a>c) entao
            escreval(b, ",",a,",",c)
         senao
            escreval(a, ",",c,",",b)
         fimse
      senao
         se (b>c) entao
            escreval(a, ",",b,",",c)
         senao
            escreval(a, ",",c,",",b)
         fimse
      fimse
   

      
   fimescolha

Fimalgoritmo

//se (a>b) e (a>c) entao
//         escreval(b, ",",a,",",c)
//      fimse
//
//      se(b>a) e (b>c) entao
//         escreval(a, ",",b,",",c)
//      fimse

//      se (c>a) e (c>b) entao
//         escreval(a, ",",c,",",b)
//      fimse

