Algoritmo "UN3.3-EXERC2.3"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/09/2022
Var
   // Seção de Declarações das variáveis
   num, divisor,contador,quant:inteiro
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("Digite um número: ")
   leia(num)
   escreval("Número lido = ",num)
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