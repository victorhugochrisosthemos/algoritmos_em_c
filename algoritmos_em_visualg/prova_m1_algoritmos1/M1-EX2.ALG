Algoritmo "M1-EX2"
// Disciplina   : Algoritmos e programa��o I
// Professor   : Fernanda Cunha
// Descri��o   : Exerc�cio 2 da M1
// Autor(a)    : Victor Hugo Chrisosthemos Teixeira
//               Ihoana Gatti Lopes
// Data atual  : 04/09/2022
Var
   // Se��o de Declara��es das vari�veis
peso,planeta: real
letra: caractere

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreva("Digite o peso em Kg do objeto na Terra: ")
   leia(peso)
   escreval("[ A ] Merc�rio")
   escreval("[ B ] V�nus")
   escreval("[ C ] Marte")
   escreval("[ D ] J�piter")
   escreval("[ E ] Saturno")
   escreval("[ F ] Ur�no")
   escreval("Digite um dos c�digos acima em maiuscula: ")
   leia(letra)

   escolha(letra)
   caso "A"
      planeta<- peso*0.37/10
      escreval("O peso em Merc�rio �:",planeta)
   caso "B"
      planeta<- peso*0.88/10
      escreval("O peso em V�nus �: ",planeta)
   caso "C"
      planeta<- peso*0.38/10
      escreval("O peso em Marte �: ",planeta)
   caso "D"
      planeta<- peso*2.64/10
      escreval("O peso em J�piter �: ",planeta)
   caso "E"
      planeta<- peso*1.15/10
      escreval("O peso em Saturno �: ",planeta)
   caso "F"
      planeta<- peso*1.17/10
      escreval("O peso em Ur�no �: ",planeta)
   fimescolha

Fimalgoritmo