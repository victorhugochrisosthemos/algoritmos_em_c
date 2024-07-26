Algoritmo "aula2-ex4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 31/08/2022
Var
// Seção de Declarações das variáveis 
cat1, cat2, hip: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite o valor do primeiro cateto: ")
leia(cat1)
escreva("Digite o valor do segundo cateto: ")
leia(cat2)
hip<- RAIZQ(cat1^2 + cat2^2)
escreva("A hipotenusa é: ",hip)

Fimalgoritmo