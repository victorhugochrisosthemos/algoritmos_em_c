Algoritmo "lista-1-ex13"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/08/2022
Var
// Seção de Declarações das variáveis 
g, massa_um, massa_dois, massa_tres, dist_um_dois, dist_um_tres, dist_dois_tres, e_um, e_dois, e_tres, energia_coesao: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Qual o valor da massa 1 em gramas? ")
leia(massa_um)
escreval("Qual o valor da massa 2 em gramas? ")
leia(massa_dois)
escreval("Qual o valor da massa 3 em gramas? ")
leia(massa_tres)
escreval("Qual é a distância da massa 1 da massa 2 em metros? ")
leia(dist_um_dois)
escreval("Qual é a distância da massa 1 da massa 3 em metros? ")
leia(dist_um_tres)
escreval("Qual é a distância da massa 2 da massa 3 em metros? ")
leia(dist_dois_tres)

g <- 6.67/10^11

e_um <- (massa_um*massa_dois)/dist_um_dois
e_dois <- (massa_um*massa_tres)/dist_um_tres
e_tres <- (massa_dois*massa_tres)/dist_dois_tres

energia_coesao <- g*100(e_um + e_dois + e_tres)

escreva("A energia de coesão é ", energia_coesao)


Fimalgoritmo