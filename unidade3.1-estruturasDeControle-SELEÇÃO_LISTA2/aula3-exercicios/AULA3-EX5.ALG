Algoritmo "aula3-ex5"
//
//
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/08/2022
Var
   // Seção de Declarações das variáveis
   n_um,n_dois,n_tres,opcao:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   escreval("Digite o valor n1:")
   leia(n_um)
   escreval("Digite o valor n2:")
   leia(n_dois)
   escreval("Digite o valor n3:")
   leia(n_tres)
   escreval("Digite a sua opção:")
   leia(opcao)

   escolha (opcao)
   caso 1
      escreval(n_um)
   caso 2
      escreval(n_dois)
   caso 3
      escreval(n_tres)
   outrocaso
      escreval("Opção inválida")
   fimescolha
Fimalgoritmo