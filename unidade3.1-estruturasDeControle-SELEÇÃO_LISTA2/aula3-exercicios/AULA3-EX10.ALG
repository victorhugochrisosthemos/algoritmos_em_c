Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/08/2022
Var
// Se��o de Declara��es das vari�veis 
func:caractere
extras,faltas,premio:real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Digite o nome do funcion�rio:")
leia(func)
escreval("Qual o n�mero de horas extras dele?")
leia(extras)
escreval("E quantas horas de faltas?")
leia(faltas)

premio<- extras - faltas*2/3

se (extras > 10) entao
   se (extras > 20) entao
      se (extras > 30) entao
         se (extras > 40) entao
            escreval("Funcion�rio: ",func)
            escreval("Gratifica��o: R$ 1.000,00")
         senao
            escreval("Funcion�rio: ",func)
            escreval("Gratifica��o: R$ 800,00")
         fimse
      senao
         escreval("Funcion�rio: ",func)
         escreval("Gratifica��o: R$ 600,00")
      fimse
   senao
      escreval("Funcion�rio: ",func)
      escreval("Gratifica��o: R$ 400,00")
   fimse
senao
   escreval("Funcion�rio: ",func)
   escreval("Gratifica��o: R$ 200,00")
fimse

Fimalgoritmo