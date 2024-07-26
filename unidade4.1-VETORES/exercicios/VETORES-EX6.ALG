Algoritmo "vetores-ex6"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/10/2022
Var
   // Seção de Declarações das variáveis
   n,i,aumenta,diminui,divisao:inteiro
   x:vetor[1..10] de real
   aux:real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   repita
      escreval("Informe o tamanho N do vetor X:")
      leia(n)
   ate (n > 0) e (n < 11)
   para i de 1 ate n faca
      escreval("Iteração ",i)
      escreval("Informe o valor de X:")
      leia(x[i])
   fimpara

   escreva("Original = ")
   para i de 1 ate n faca
      escreva(x[i], " ")
   fimpara
   escreval(" ")
   se n mod 2 = 0 entao
      divisao <- n div 2
      aumenta <- divisao
      diminui <- aumenta
      para i de 1 ate divisao faca
         aumenta <- aumenta + 1
         aux <- x[aumenta]
         x[aumenta] <- x[diminui]
         x[diminui] <- aux
         diminui <- diminui - 1
      fimpara
   senao
      divisao <- n div 2 + 1
      aumenta <- n div 2
      diminui <- aumenta + 2
      para i de 1 ate divisao faca
         aumenta <- aumenta + 1
         diminui <- diminui - 1
         aux <- x[aumenta]
         x[aumenta] <- x[diminui]
         x[diminui] <- aux
      fimpara
   fimse
   escreva("Modificado = ")
   para i de 1 ate n faca
      escreva(x[i], " ")
   fimpara
Fimalgoritmo