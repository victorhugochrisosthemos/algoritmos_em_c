Algoritmo "AULA3-EX13"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/09/2022
Var
// Se��o de Declara��es das vari�veis 
ind:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Qual � o �ndice de polui��o? ")
leia(ind)

se ind >= 0.3 entao
   se ind >= 0.4 entao
      se ind >= 0.5 entao
         escreval("Chamar as ind�strias das listas A,B e C")
      senao
         escreval("Chamar as ind�strias da lista B")
      fimse
   senao
         escreval("Chamar as ind�strias da lista A")
   fimse
fimse

Fimalgoritmo