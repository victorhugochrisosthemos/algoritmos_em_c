Algoritmo "vetores-ex3"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/10/2022
Var
// Se��o de Declara��es das vari�veis 
n,i:inteiro
v:vetor[1..15] de real
w:vetor[1..15] de real
soma:vetor[1..15] de real
subt:vetor[1..15] de real
mult:vetor[1..15] de real
divisao:vetor[1..15] de real
pe:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
repita
   escreval("Informe o tamanho N dos vetores:")
   leia(n)
ate (n > 0) e (n < 15)
para i de 1 ate n faca
   escreval("Itera��o ", i)
   escreval("Informe o valor do vetor V:")
   leia(v[i])
   escreval("Informe o valor do vetor W:")
   leia(w[i])
   escreval("----------------------------")
fimpara
para i de 1 ate n faca
   soma[i] <- v[i] + w[i]
   subt[i] <- v[i] + w[i]
   mult[i] <- v[i] * w[i]
   divisao[i] <- v[i] / w[i]
   pe <- pe + v[i]*w[i]
fimpara
escreva("Soma = ")
para i de 1 ate n faca
     escreva(soma[i]," ")
fimpara
escreval(" ")
escreva("Subtra��o = ")
para i de 1 ate n faca
     escreva(subt[i]," ")
fimpara
escreval(" ")
escreva("Multiplica��o = ")
para i de 1 ate n faca
     escreva(mult[i]," ")
fimpara
escreval(" ")
escreva("Divis�o = ")
para i de 1 ate n faca
     escreva(divisao[i]," ")
fimpara
escreval(" ")
se pe = 0 entao
    escreval("Vetores classificados como ortogonais")
senao
    escreval("Produto escalar = ",pe)
fimse

Fimalgoritmo