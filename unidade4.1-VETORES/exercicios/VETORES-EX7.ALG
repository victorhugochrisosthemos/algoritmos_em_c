Algoritmo "erro-vetores-ex7"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/10/2022
Var
   // Seção de Declarações das variáveis
   mais:caractere
   v_renda:vetor[1..42] de real
   pessoas:vetor[1..42] de inteiro
   i,j,praia:inteiro
   renda:real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   repita
      i <- i + 1
      repita
         escreval("Qual a praia de preferência?")
         leia(praia)
      ate (praia > 0) e (praia < 43)
      repita
         escreval("Qual é a renda mensal?")
         leia(renda)
      ate renda >= 0
      pessoas[praia] <- pessoas[praia] + 1
      v_renda[praia] <- v_renda[praia] + renda
      repita
         escreval("Mais turistas? S/N")
         leia(mais)
      ate (mais = "S") ou (mais = "N")
      escreval("-----------------------")
   ate (mais <> "S") ou (i = 3000)
   para j de 1 ate 42 faca
      se pessoas[j] = 0 entao
         escreva("Código da praia: ", j, "    ")
         escreva("Turistas: 0     ")
         escreval("Renda média (R$): 0")
      senao
         escreva("Código da praia: ", j, "    ")
         escreva("Turistas: ", pessoas[j],"     ")
         escreval("Renda média (R$): ", v_renda[j] / pessoas[j])
      fimse

   fimpara

Fimalgoritmo