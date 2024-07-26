Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/08/2022
Var
// Seção de Declarações das variáveis 
opcao:caractere
b,h,l,area:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite uma das opções: T, Q ou R (maiúscula)")
leia(opcao)

se (opcao = "T") entao
   escreval("Digite a base do triângulo:")
   leia(b)
   escreval("Digite a altura do triângulo:")
   leia(h)
   area<- b*h/2
   escreval("A área do triângulo é: ",area)
fimse

se (opcao = "Q") entao
   escreval("Digite o lado do quadrado:")
   leia(l)
   area<- exp(l,2)
   escreval("A área do quadrado é: ",area)
fimse
se (opcao = "R") entao
   escreval("Digite a base do retângulo:")
   leia(b)
   escreval("Digite a altura do retângulo:")
   leia(h)
   area<- b*h
   escreval("A área do quadrado é: ",area)
fimse

Fimalgoritmo