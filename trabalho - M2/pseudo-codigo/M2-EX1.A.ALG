Algoritmo "M2-EX1.A"
// Disciplina   : [Algoritmos e Programa��o]
// Professora   : Fernanda
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Victor Hugo Chrisosthemos Teixeira
// Data atual  : 06/10/2022
Var
   // Se��o de Declara��es das vari�veis
   n,cont:inteiro
   termo:real

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
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