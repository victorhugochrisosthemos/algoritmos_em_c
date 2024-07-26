Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/08/2022
Var
// Seção de Declarações das variáveis 
sexo:caractere
altura,ideal:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Qual o seu sexo? M ou F (maiúscula)")
leia(sexo)
escreval("Qual a sua altura?(em metros)")
leia(altura)

se (sexo = "M") entao
   ideal<-72.7*altura - 58
   escreval("Seu peso ideal é: ", ideal:3:2)
senao
   ideal<-62.1*altura - 44.7
   escreval("Seu peso ideal é: ", ideal:3:2)
fimse


Fimalgoritmo