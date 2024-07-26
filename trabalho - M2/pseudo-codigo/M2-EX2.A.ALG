Algoritmo "M2-EX2.A"
// Disciplina   : [Algoritmos e Programação]
// Professora   : Fernanda
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Victor Hugo Chrisosthemos Teixeira
// Data atual  : 06/10/2022
Var
   // Seção de Declarações das variáveis
   soma1, soma2, cont: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   soma1 <- 0
   cont <- 1
   repita
      soma1 <- soma2
      soma2 <- soma1 + 1 / cont^cont

      escreval("Contador: ", cont)
      escreval("Cálculo: 1/", cont, " ^", cont, "=", 1 / cont^cont)
      escreval("Soma 1: ", soma1)
      escreval("Soma 2: ", soma2)
      escreval("Soma 2 - Soma1: ", abs(soma2 - soma1))
      escreval("------------------------------------")
      
      cont <- cont + 1
   ate abs(soma2 - soma1) <= 0.001
   escreval("S = ",soma2)

Fimalgoritmo