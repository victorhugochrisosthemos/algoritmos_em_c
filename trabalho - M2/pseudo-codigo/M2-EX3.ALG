Algoritmo "M2-EX3"
// Disciplina   : [Algoritmos e Programa��o]
// Professora   : Fernanda
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Victor Hugo Chrisosthemos Teixeira
// Data atual  : 06/10/2022
Var
   // Se��o de Declara��es das vari�veis
   n,cont:inteiro
   m,soma,menor,maior:real
Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   cont <- 1
   repita
      escreval("Informe a quantidade N de termos:")
      leia(n)
   ate n > 0
   enquanto cont <= n faca
      repita
         escreval("Valor", cont, ".Informe um n�mero real:")
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
   escreval("M�dia: ", soma / n)
   escreval("Menor: ", menor)
   escreval("Maior: ", maior)
Fimalgoritmo