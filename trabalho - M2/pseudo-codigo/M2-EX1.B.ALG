Algoritmo "M2-EX1.B"
// Disciplina   : [Algoritmos e Programa��o]
// Professora   : Fernanda
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Victor Hugo Chrisosthemos Teixeira
// Data atual  : 06/10/2022
Var
   // Se��o de Declara��es das vari�veis
   n,cont,resto,termos,divisao:inteiro

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   repita
      escreval("Escreva a quantidade N de termos:")
      leia(n)
   ate n > 0
   se n = 1 entao
      escreval("1")
   senao
      se n = 2 entao
         escreva("1, 4")
      senao
         //O resto s� pode dar 0, 1 e 2, se for 0, o ciclo ser� inteiro
         resto <- n mod 3
         divisao <- n div 3
         para cont de 1 ate divisao faca
            escreva(cont, " ")
            escreva(cont + 3, " ")
            escreva(cont + 3, " ")
         fimpara
         se (resto = 1) e (cont = divisao) entao
            escreva(cont + 1, " ")
         fimse
         se (resto = 2) e (cont = divisao) entao
            escreva(cont + 1, " ")
            escreva(cont + 4, " ")
         fimse
      fimse
   fimse

Fimalgoritmo