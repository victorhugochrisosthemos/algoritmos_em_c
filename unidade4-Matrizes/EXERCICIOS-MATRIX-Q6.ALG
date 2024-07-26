Algoritmo "exercicios-matrix-q6"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/12/2022
Var
// Seção de Declarações das variáveis 
matrix:vetor[1..4,1..7] de inteiro
i,j,cont_acima,cont_abaixo,media,maxima,minima:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
para i de 1 ate 4 faca
    para j de 1 ate 7 faca
        matrix[i,j] <- randi(50)
    fimpara
fimpara

para i de 1 ate 4 faca
     para j de 1 ate 7 faca
         escreva(matrix[i,j], "    ")
     fimpara
     escreval("   ")
fimpara

escreval(" ")
para i de 1 ate 4 faca
    para j de 1 ate 7 faca
        media <- media + matrix[i,j]
        se j = 1 entao
           maxima <- matrix[i,j]
           minima <- matrix[i,j]
        senao
             se matrix[i,j] > maxima entao
                 maxima <- matrix[i,j]
             fimse
             se matrix[i,j] < minima entao
                 minima <- matrix[i,j]
             fimse
        fimse
        se matrix[i,j] > 25 entao
             cont_acima <- cont_acima + 1
        fimse
        se matrix[i,j] < 25 entao
             cont_abaixo <- cont_abaixo + 1
        fimse
    fimpara
    escreval("Semana",i)
    escreval("Média da semana:",media/7)
    escreval("Máxima:",maxima)
    escreval("Mínima:",minima)
    escreval("------------------------------------")
fimpara
    escreval("Dias acima de 25 graus celsius:",cont_acima)
    escreval("Dias abaixo de 25 graus celsius:",cont_abaixo)

Fimalgoritmo