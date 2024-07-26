Algoritmo "lista-1-ex9"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/08/2022
Var
// Seção de Declarações das variáveis 
nome:caractere
n_um, n_dois, n_tres, n_um_peso, n_dois_peso, n_tres_peso, media_pond: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Nome do aluno: ")
leia(nome)
escreval("Qual a nota obtida em n1? ")
leia(n_um)
escreval("Qual o peso da nota n1? ")
leia(n_um_peso)
escreval("Qual a nota obtida em n2? ")
leia(n_dois)
escreval("Qual o peso da nota n2? ")
leia(n_dois_peso)
escreval("Qual a nota obtida em n3? ")
leia(n_tres)
escreval("Qual o peso da nota n3? ")
leia(n_tres_peso)
media_pond <- (n_um*n_um_peso + n_dois*n_dois_peso + n_tres*n_tres_peso) / (n_um_peso+n_dois_peso+n_tres_peso)
escreval("Aluno: ", nome)
escreval("Média ponderada das notas: ", media_pond:2:2)

Fimalgoritmo