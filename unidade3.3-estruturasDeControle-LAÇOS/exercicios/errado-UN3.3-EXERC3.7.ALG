Algoritmo "UN3.3-EXERC3.7"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/09/2022
Var
   // Seção de Declarações das variáveis
   inscricao,altura,cont,maior, menor, insc_maior, insc_menor:inteiro
   mais_um:caractere
   media:real
   n1,n2: logico

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   repita
      escreval("Informe o número de inscrição do atleta: ")
      leia(inscricao)
      escreval("Informa a sua altura em centímetros: ")
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
      escreval("Maior atleta - ", maior, " cm, inscrição ",insc_maior)
      escreval("Menor atleta - ", menor, " cm, inscrição ",insc_menor)
      escreval("Média da altura dos atletas: ",media)
      escreva("Mais um atleta [S/N]? ")
      leia(mais_um)
   ate mais_um = "N"

Fimalgoritmo