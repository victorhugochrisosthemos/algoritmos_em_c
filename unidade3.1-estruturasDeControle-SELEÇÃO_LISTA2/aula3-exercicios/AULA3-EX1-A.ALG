Algoritmo "aula3-EX1-A"
//
//
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/08/2022
Var
   // Seção de Declarações das variáveis
   numero:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("Digite um número inteiro:")
   leia(numero)
   se (numero>=20) entao
      se (numero<=90) entao
         escreval("Número no intervalo [20,90]")
      senao
         escreval("Número acima de intervalo [20,90]")
      fimse
   senao
      escreval("Número abaixo de intervalo [20,90]")
   fimse

Fimalgoritmo