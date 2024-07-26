Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/08/2022
Var
// Seção de Declarações das variáveis 
a,b,c,delta:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Escreva o valor de A da função quadrática:")
leia(a)
escreval("Escreva o valor de B da função quadrática:")
leia(b)
escreval("Escreva o valor de C da função quadrática:")
leia(c)

delta <- Exp(b,2)  - 4*a*c

se (delta > 0) entao
   se (delta = 0) entao
      escreval("A função quadrática possui 2 raízes reais!")
   senao
      escreval("A função quadrática possui 1 raiz real!")
   fimse
senao
   escreval("A função quadrática não possui raiz real!")
fimse


Fimalgoritmo