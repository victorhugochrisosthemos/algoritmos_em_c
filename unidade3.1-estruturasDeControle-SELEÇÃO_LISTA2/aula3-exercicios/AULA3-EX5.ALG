Algoritmo "aula3-ex5"
//
//
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/08/2022
Var
   // Se��o de Declara��es das vari�veis
   n_um,n_dois,n_tres,opcao:inteiro

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   escreval("Digite o valor n1:")
   leia(n_um)
   escreval("Digite o valor n2:")
   leia(n_dois)
   escreval("Digite o valor n3:")
   leia(n_tres)
   escreval("Digite a sua op��o:")
   leia(opcao)

   escolha (opcao)
   caso 1
      escreval(n_um)
   caso 2
      escreval(n_dois)
   caso 3
      escreval(n_tres)
   outrocaso
      escreval("Op��o inv�lida")
   fimescolha
Fimalgoritmo