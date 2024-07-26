Algoritmo "M1-EX1"
// Disciplina   : Algoritmos e programação I
// Professor   : Fernanda Cunha
// Descrição   : Exercício 1 da M1
// Autor(a)    : Victor Hugo Chrisosthemos Teixeira
//               Ihoana Gatti Lopes
// Data atual  : 04/09/2022
Var
   // Seção de Declarações das variáveis
   peso, altura:real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreva("Digite o peso do atleta: ")
   leia(peso)
   escreva("Digite a altura do atleta: ")
   leia(altura)

   se (peso >= 65) e (peso <= 100) entao
      se (altura >= 1.7) e (altura <= 1.95) entao
         escreval("ACEITO")
      senao
         escreval("RECUSADO POR ALTURA")
      fimse
   senao
      se (altura >= 1.7) e (altura <= 1.95) entao
         escreval("RECUSADO POR PESO")
      senao
         escreval("TOTALMENTE RECUSADO")
      fimse
   fimse


Fimalgoritmo