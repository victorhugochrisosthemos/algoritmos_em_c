Algoritmo "UN3.3-EXERC3.7"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/09/2022
Var
   // Se��o de Declara��es das vari�veis
   inscricao,altura,cont,maior, menor, insc_maior, insc_menor:inteiro
   mais_um:caractere
   media:real
   n1,n2: logico

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   repita
      escreval("Informe o n�mero de inscri��o do atleta: ")
      leia(inscricao)
      escreval("Informa a sua altura em cent�metros: ")
      leia(altura)
      cont <- cont + 1
      se altura >= maior entao
         maior <- altura
         insc_maior <- inscricao
      fimse
      n1 <- cont = 2
      n2 <- altura <= maior
      se (altura <= menor) ou (n1 = n2) entao
         menor <- altura
         insc_menor <- inscricao
      fimse
      media <- (media + altura)/cont
      escreval("Maior atleta - ", maior, " cm, inscri��o ",insc_maior)
      escreval("Menor atleta - ", menor, " cm, inscri��o ",insc_menor)
      escreval("M�dia da altura dos atletas: ",media)
      escreva("Mais um atleta [S/N]? ")
      leia(mais_um)
   ate mais_um = "N"

Fimalgoritmo