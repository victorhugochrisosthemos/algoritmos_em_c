Algoritmo "M2-EX2.B"
// Disciplina   : [Algoritmos e Programa��o]
// Professora   : Fernanda
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Victor Hugo Chrisosthemos Teixeira
// Data atual  : 06/10/2022
Var
   // Se��o de Declara��es das vari�veis
   soma1, soma2, cont: real
Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   soma1 <- 0
   cont <- 1
   repita
      soma1 <- soma2
      se cont mod 2 <> 0 entao
         soma2 <- soma1 + 1 / cont^3
         escreval("Contador: ", cont)
         escreval("C�lculo: ",soma1," + 1/", cont, "^", "3")
         escreval("C�lculo: ",soma1," + ", 1 / cont^3)
         escreval("Soma 1: ", soma1)
         escreval("Soma 2: ", soma2)
         escreval("Soma 2 - Soma1: ", abs(soma2 - soma1))
         escreval("------------------------------------")
      senao
         soma2 <- soma1 - 1 / cont^3
         escreval("Contador: ", cont)
         escreval("C�lculo: ",soma1," - 1/", cont, "^", "3")
         escreval("C�lculo: ",soma1," - ", 1 / cont^3)
         escreval("Soma 1: ", soma1)
         escreval("Soma 2: ", soma2)
         escreval("Soma 2 - Soma1: ", abs(soma2 - soma1))
         escreval("------------------------------------")
      fimse
      cont <- cont + 1
   ate abs(soma2 - soma1) <= 0.001
   escreval("S = ",soma2)
Fimalgoritmo