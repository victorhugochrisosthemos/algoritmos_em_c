Algoritmo "M1-EX3"
// Disciplina   : Algoritmos e programação I
// Professor   : Fernanda Cunha
// Descrição   : Exercício 3 da M1
// Autor(a)    : Victor Hugo Chrisosthemos Teixeira
//               Ihoana Gatti Lopes
// Data atual  : 04/09/2022
Var
// Seção de Declarações das variáveis 
conceito, matr, situacao: caractere
p1,p2,p3,me,media: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Qual é a matrícula do aluno? ")
leia(matr)
escreval("Qual o nota dele na prova 1? ")
leia(p1)
escreval("Qual o nota dele na prova 2? ")
leia(p2)
escreval("Qual o nota dele na prova 3? ")
leia(p3)
escreval("Qual a média de exercícios dele? ")
leia(me)

media<- (p1 + p2*2 + p3*3 + me)/7

se media >= 4 entao
   se media >= 6.0 entao
        se media >= 7.5 entao
             se media >= 9 entao
                  conceito<- "A"
             senao
                  conceito<- "B"
             fimse
        senao
             conceito<- "C"
        fimse
   senao
        conceito<- "D"
   fimse
senao
   conceito<- "E"
fimse

escolha conceito
        caso "A"
             situacao<- "Aprovado"
        caso "B"
             situacao<- "Aprovado"
        caso "C"
             situacao<- "Aprovado"
        caso "D"
             situacao<- "Reprovado"
        caso "E"
             situacao<- "Reprovado"
fimescolha

escreval("A matrícula do aluno é: ",matr)
escreval("A média do aluno é: ",media)
escreval("Conceito: ",conceito)
escreval("Situação : ",situacao)

Fimalgoritmo