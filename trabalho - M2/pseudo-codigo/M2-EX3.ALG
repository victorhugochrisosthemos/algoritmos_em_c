Algoritmo "M2-EX3"
// Disciplina   : [Algoritmos e Programação]
// Professora   : Fernanda
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Victor Hugo Chrisosthemos Teixeira
// Data atual  : 06/10/2022
Var
   // Seção de Declarações das variáveis
   n,cont:inteiro
   m,soma,menor,maior:real
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   cont <- 1
   repita
      escreval("Informe a quantidade N de termos:")
      leia(n)
   ate n > 0
   enquanto cont <= n faca
      repita
         escreval("Valor", cont, ".Informe um número real:")
         leia(m)
      ate m > 0
      soma <- soma + m

      se cont = 1 entao
         maior <- m
         menor <- m
      senao
         se m > maior entao
            maior <- m
         fimse
         se m < menor entao
            menor <- m
         fimse
      fimse

      cont <- cont + 1
   fimenquanto
   escreval("Média: ", soma / n)
   escreval("Menor: ", menor)
   escreval("Maior: ", maior)
Fimalgoritmo