Algoritmo "aula3-EX1-A"
//
//
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/08/2022
Var
   // Se��o de Declara��es das vari�veis
   numero:inteiro

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreval("Digite um n�mero inteiro:")
   leia(numero)
   se (numero>=20) entao
      se (numero<=90) entao
         escreval("N�mero no intervalo [20,90]")
      senao
         escreval("N�mero acima de intervalo [20,90]")
      fimse
   senao
      escreval("N�mero abaixo de intervalo [20,90]")
   fimse

Fimalgoritmo