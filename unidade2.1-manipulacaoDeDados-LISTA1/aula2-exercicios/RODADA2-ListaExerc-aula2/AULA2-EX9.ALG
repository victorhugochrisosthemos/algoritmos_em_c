Algoritmo "aula2-ex9"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 31/08/2022
Var
// Se��o de Declara��es das vari�veis 
n1,n2,n3,nota1,nota2,nota3,media:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
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
escreva("A m�dia ponderada foi: ",media)

Fimalgoritmo