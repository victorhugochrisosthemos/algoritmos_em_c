Algoritmo "M2-EX1.B"
// Disciplina   : [Algoritmos e Programação]
// Professora   : Fernanda
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Victor Hugo Chrisosthemos Teixeira
// Data atual  : 06/10/2022
Var
   // Seção de Declarações das variáveis
   n,cont,resto,termos,divisao:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
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
         //O resto só pode dar 0, 1 e 2, se for 0, o ciclo será inteiro
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