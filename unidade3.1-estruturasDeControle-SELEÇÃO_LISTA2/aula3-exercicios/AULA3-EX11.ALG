Algoritmo "AULA3-EX11"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/09/2022
Var
// Seção de Declarações das variáveis 
term, ini, dur:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Qual é o horário de início? (no formato 24 horas)")
leia(ini)
escreval("Qual é o horário de término? (no formato 24 horas)")
leia(term)

se (term <= ini) entao
   se (term = ini) entao
      dur <- 100
   senao
      dur <- 24 - ini + term
   fimse
senao
   dur <- term - ini
fimse

escreval("A duração do jogo é: ",dur)

Fimalgoritmo