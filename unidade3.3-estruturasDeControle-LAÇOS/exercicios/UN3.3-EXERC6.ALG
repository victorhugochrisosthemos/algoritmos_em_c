Algoritmo "UN3.3-EXERC6"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/09/2022
Var
   // Se��o de Declara��es das vari�veis
   maisCasa, tv:caractere
   canal,pessoas,pessoas4,pessoas5,pessoas9,pessoas12:inteiro
   somaPessoas:inteiro
   aud4,aud5,aud9,aud12:real

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   repita
      escreval("A TV est� ligada [S/N]? ")
      leia(tv)
      se tv = "S" entao
         escreval("Qual o n�mero do canal [4,5,9,12]? ")
         leia(canal)
         escreval("Quantas pessoas? ")
         leia(pessoas)
         escolha canal
         caso 4
            pessoas4 <- pessoas4 + pessoas
         caso 5
            pessoas5 <- pessoas5 + pessoas
         caso 9
            pessoas9 <- pessoas9 + pessoas
         caso 12
            pessoas12 <- pessoas12 + pessoas
         fimescolha
      senao
         pessoas <- 0
         canal <- 0
      fimse
      somaPessoas <- somaPessoas + pessoas
      aud4 <- (pessoas4/somaPessoas)*100
      aud5 <- (pessoas5/somaPessoas)*100
      aud9 <- (pessoas9/somaPessoas)*100
      aud12 <- (pessoas12/somaPessoas)*100
      escreval("Total de telespetadores: ", somaPessoas)
      escreva(aud4:3:2)
      escreval("% do canal 4")
      escreva(aud5:3:2)
      escreval("% do canal 5")
      escreva(aud9:3:2)
      escreval("% do canal 9")
      escreva(aud12:3:2)
      escreval("% do canal 12")
      escreval("Mais uma casa [S/N]?")
      leia(maisCasa)
   ate maisCasa = "N"

Fimalgoritmo