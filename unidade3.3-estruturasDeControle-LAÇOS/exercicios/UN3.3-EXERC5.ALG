Algoritmo "UN3.3-EXERC5"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/09/2022
Var
// Seção de Declarações das variáveis 
maisAluno,sexo:caractere
contm,contf:inteiro
mediaAlturaf,mediaAlturam, altura, peso: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
repita

      escreval("Digite a altura: ")
      leia(altura)
      escreval("Digite o sexo [F/M]: ")
      leia(sexo)
      
      se sexo = "F" entao
         contf <- contf + 1
         mediaAlturaf <- (mediaAlturaf + altura)/contf
         escreval("Média da altura feminina: ", mediaAlturaf)
      senao
         contm <- contm + 1
         mediaAlturam <- (mediaAlturam + altura)/contm
         escreval("Média da altura masculina: ", mediaAlturam)
      fimse

      escreval("Mais um aluno [S/N]? ")
      leia(maisAluno)

ate maisAluno = "N"


Fimalgoritmo