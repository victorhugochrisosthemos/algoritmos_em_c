Algoritmo "AULA3-EX13"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/09/2022
Var
// Seção de Declarações das variáveis 
ind:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Qual é o índice de poluição? ")
leia(ind)

se ind >= 0.3 entao
   se ind >= 0.4 entao
      se ind >= 0.5 entao
         escreval("Chamar as indústrias das listas A,B e C")
      senao
         escreval("Chamar as indústrias da lista B")
      fimse
   senao
         escreval("Chamar as indústrias da lista A")
   fimse
fimse

Fimalgoritmo