Algoritmo "aula2-ex9"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 31/08/2022
Var
// Seção de Declarações das variáveis 
n1,n2,n3,nota1,nota2,nota3,media:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite o valor da primeira nota: ")
leia(nota1)
escreva("Digite o peso da primeira nota: ")
leia(n1)
escreva("Digite o valor da segunda nota: ")
leia(nota2)
escreva("Digite o peso da segunda nota: ")
leia(n2)
escreva("Digite o valor da terceira nota: ")
leia(nota3)
escreva("Digite o peso da terceira nota: ")
leia(n3)
media<- (nota1*n1 + nota2*n2 + nota3*n3)/(n1+n2+n3)
escreva("A média ponderada foi: ",media)

Fimalgoritmo