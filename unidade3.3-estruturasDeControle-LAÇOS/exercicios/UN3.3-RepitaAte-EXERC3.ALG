Algoritmo "un3.3-exerc3"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/09/2022
Var
// Seção de Declarações das variáveis 
x, media, divisao: real
quantidade: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

repita
   escreval("Digite um número: ")
   leia(x)
   divisao <- x mod 2
   se (divisao = 0) entao
      quantidade <- quantidade + 1
      media <- (media + x) / quantidade
      escreval("Média dos valores: ", media)
   senao
      escreval("Este número não é par e não será considerado!")
   fimse
ate (x = 0)

Fimalgoritmo