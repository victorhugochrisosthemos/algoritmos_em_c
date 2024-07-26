Algoritmo "UN3.3-EXERC2.4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/09/2022
Var
   // Seção de Declarações das variáveis
   contador,quant:inteiro
   massa,massa_inicial: real
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("Qual é a massa inicial em Kg? ")
   leia(massa)
   massa_inicial <- massa

   repita
      massa <- massa - massa/2
      contador <- contador + 1
   ate massa < 0.5

   quant <- contador * 50

   escreval("Massa inicial: ", massa_inicial, " Kg")
   escreval("Massa final: ", massa, " Kg")
   escreval("Tempo: ", quant, " segundos")

Fimalgoritmo