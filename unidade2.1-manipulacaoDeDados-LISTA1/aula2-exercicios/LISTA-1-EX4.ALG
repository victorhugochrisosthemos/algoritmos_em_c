Algoritmo "lista-1-ex4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/08/2022
Var
// Seção de Declarações das variáveis 
cateto_um, cateto_dois, hipotenusa: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Escreva o comprimento do cateto 1: ")
leia(cateto_um)
escreval("Escreva o comprimento do cateto 2: ")
leia(cateto_dois)
hipotenusa <- RaizQ(cateto_um^2 + cateto_dois^2)
escreval("A Hipotenusa é: ", hipotenusa)

Fimalgoritmo