Algoritmo "aula3-ex7"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/08/2022
Var
// Se��o de Declara��es das vari�veis 
x,y,z,soma_um,soma_dois,soma_tres:inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Digite o valor do lado X do tri�ngulo:")
leia(x)
escreval("Digite o valor do lado Y do tri�ngulo:")
leia(y)
escreval("Digite o valor do lado Z do tri�ngulo:")
leia(z)

soma_um <- x + y
soma_dois <- x + z
soma_tres <- y + z

se (x < soma_um) entao
   se (y < soma_dois) entao
      se (z < soma_tres) entao
         escreval("� um tri�ngulo!")
         se (x = y) ou (x = z) ou (y = z) entao
            se (x = y) e (x = z) entao
               escreval("E � equil�tero!")
            senao
               escreval("E � is�sceles!")
            fimse
         senao
            escreval("E � escaleno!")
         fimse
      senao
         escreval("N�o � um tri�ngulo!")
      fimse
   senao
      escreval("N�o � um tri�ngulo!")
   fimse
senao
   escreval("N�o � um tri�ngulo!")
fimse

Fimalgoritmo