Algoritmo "M2-EX4"
// Disciplina   : [Algoritmos e Programa��o]
// Professora   : Fernanda
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Victor Hugo Chrisosthemos Teixeira
// Data atual  : 06/10/2022
Var
   // Se��o de Declara��es das vari�veis
   ponto,winner,ganhador:caractere
   left,right:inteiro

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   repita
      repita
         escreval("----------------------")
         escreval("Ponto de quem? E/D")
         leia(ponto)
         se  (ponto <> "E") e (ponto <> "D") entao
             escreval("Dado incorreto! Digite E ou D")
         fimse
      ate (ponto = "E") ou (ponto = "D")
      escolha ponto
      caso "E"
         left <- left + 1
      caso "D"
         right <- right + 1
      fimescolha
      escreval("Placar: Esquerda ",left," X ",right," Direita")
      se (left >= 21) ou (right >= 21) entao
         se (left >= right + 2) entao
               winner <- "E"
               ganhador <- "Esquerda"
         fimse
         se (right >= left + 2) entao
             winner <- "D"
             ganhador <- "Direita"
         fimse
      fimse
   ate  (winner = "D") ou (winner = "E")
   escreval("Ganhador: ",ganhador)
Fimalgoritmo