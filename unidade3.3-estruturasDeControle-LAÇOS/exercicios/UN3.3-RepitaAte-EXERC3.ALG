Algoritmo "un3.3-exerc3"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/09/2022
Var
// Se��o de Declara��es das vari�veis 
x, media, divisao: real
quantidade: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

repita
   escreval("Digite um n�mero: ")
   leia(x)
   divisao <- x mod 2
   se (divisao = 0) entao
      quantidade <- quantidade + 1
      media <- (media + x) / quantidade
      escreval("M�dia dos valores: ", media)
   senao
      escreval("Este n�mero n�o � par e n�o ser� considerado!")
   fimse
ate (x = 0)

Fimalgoritmo