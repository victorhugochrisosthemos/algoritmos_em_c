Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/08/2022
Var
// Se��o de Declara��es das vari�veis 
sal:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Digite o valor do sal�rio do funcion�rio:")
leia(sal)

se (sal > 400) entao
   se (sal > 700) entao
      se (sal > 1000) entao
         se (sal > 1500) entao
            se (sal > 2000) entao
               //acima de 2000
               escreval("Sem aumento")
            senao
               //acima de 1500 e at� 2000
               escreval("Aumento de 4%")
            fimse
         senao
            //acima de 1000 e at� 1500
            escreval("Aumento de 7%")
         fimse
      senao
         //acima de 700 e at� 1000
         escreval("Aumento de 10%")
      fimse
   senao
      //acima de 400 e at� 700
      escreval("Aumento de 12%")
   fimse
senao
   //at� 400
   escreval("Aumento de 15%")
fimse

Fimalgoritmo