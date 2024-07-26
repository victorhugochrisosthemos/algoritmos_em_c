Algoritmo "lista-1-ex3"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/08/2022
Var
// Seção de Declarações das variáveis 
a, b, c, p, area: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Informe o valor do lado A do triângulo ABC:")
leia(a)
escreval("Informe o valor do lado B do triângulo ABC:")
leia(b)
escreval("Informe o valor do lado B do triângulo ABC:")
leia(c)
p <- (a+b+c)/2
area <- RaizQ(p*(p-a)*(p-b)*(p-c))
escreval("A área do triângulo ABC é: ", area)

Fimalgoritmo