Algoritmo "UN3.3-EXERC2.3"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/09/2022
Var
   // Se��o de Declara��es das vari�veis
   num, divisor,contador,quant:inteiro
Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreval("Digite um n�mero: ")
   leia(num)
   escreval("N�mero lido = ",num)
   escreva("Divisores = ")
   para contador de 1 ate 10 passo 1 faca
      divisor <- num mod contador
      se divisor = 0 entao
         escreva(contador," ")
         quant <- quant + 1
      fimse
   fimpara
   escreval("")
   escreval("Quantidade de divisores = ",quant)
Fimalgoritmo