Algoritmo "aula3-ex4"
//  
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/08/2022
Var
// Seção de Declarações das variáveis 
a,b:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o primeiro valor:")
leia(a)
escreval("Digite o segundo valor:")
leia(b)
se (a MOD b = 0) ou (b MOD a = 0) entao
     escreval("São múltiplos")
senao
     escreval("Não são múltiplos")
fimse

Fimalgoritmo