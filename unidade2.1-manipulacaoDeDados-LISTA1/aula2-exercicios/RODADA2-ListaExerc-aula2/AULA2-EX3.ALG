Algoritmo "aula2-ex3"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 31/08/2022
Var
// Seção de Declarações das variáveis 
a,b,c,p,area:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite o primeiro lado do triãngulo: ")
leia(a)
escreva("Digite o segundo lado do triãngulo: ")
leia(b)
escreva("Digite o terceiro lado do triãngulo: ")
leia(c)
p<- (a+b+c)/2
area<- RAIZQ(p*(p-a)*(p-b)*(p-c))
escreva("Área do triângulo: ",area)


Fimalgoritmo