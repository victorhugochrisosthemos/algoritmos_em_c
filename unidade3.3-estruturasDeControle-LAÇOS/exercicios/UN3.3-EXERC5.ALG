Algoritmo "UN3.3-EXERC5"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/09/2022
Var
// Se��o de Declara��es das vari�veis 
maisAluno,sexo:caractere
contm,contf:inteiro
mediaAlturaf,mediaAlturam, altura, peso: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
repita

      escreval("Digite a altura: ")
      leia(altura)
      escreval("Digite o sexo [F/M]: ")
      leia(sexo)
      
      se sexo = "F" entao
         contf <- contf + 1
         mediaAlturaf <- (mediaAlturaf + altura)/contf
         escreval("M�dia da altura feminina: ", mediaAlturaf)
      senao
         contm <- contm + 1
         mediaAlturam <- (mediaAlturam + altura)/contm
         escreval("M�dia da altura masculina: ", mediaAlturam)
      fimse

      escreval("Mais um aluno [S/N]? ")
      leia(maisAluno)

ate maisAluno = "N"


Fimalgoritmo