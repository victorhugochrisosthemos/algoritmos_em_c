Algoritmo "M2-EX1.A"
// Disciplina   : [Algoritmos e Programação]
// Professora   : Fernanda
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Victor Hugo Chrisosthemos Teixeira
// Data atual  : 06/10/2022
Var
   // Seção de Declarações das variáveis
   n,cont:inteiro
   termo:real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   repita
      escreval("Escreva a quantidade N de termos:")
      leia(n)
   ate n > 0
   para cont de 1 ate n faca   +
      termo <- cont^2
      se cont <> n entao
         escreva(termo, ", ")
      senao
         escreval(termo)
      fimse
   fimpara
Fimalgoritmo