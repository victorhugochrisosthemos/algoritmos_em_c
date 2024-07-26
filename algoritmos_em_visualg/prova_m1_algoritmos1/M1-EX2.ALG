Algoritmo "M1-EX2"
// Disciplina   : Algoritmos e programação I
// Professor   : Fernanda Cunha
// Descrição   : Exercício 2 da M1
// Autor(a)    : Victor Hugo Chrisosthemos Teixeira
//               Ihoana Gatti Lopes
// Data atual  : 04/09/2022
Var
   // Seção de Declarações das variáveis
peso,planeta: real
letra: caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreva("Digite o peso em Kg do objeto na Terra: ")
   leia(peso)
   escreval("[ A ] Mercúrio")
   escreval("[ B ] Vênus")
   escreval("[ C ] Marte")
   escreval("[ D ] Júpiter")
   escreval("[ E ] Saturno")
   escreval("[ F ] Urâno")
   escreval("Digite um dos códigos acima em maiuscula: ")
   leia(letra)

   escolha(letra)
   caso "A"
      planeta<- peso*0.37/10
      escreval("O peso em Mercúrio é:",planeta)
   caso "B"
      planeta<- peso*0.88/10
      escreval("O peso em Vênus é: ",planeta)
   caso "C"
      planeta<- peso*0.38/10
      escreval("O peso em Marte é: ",planeta)
   caso "D"
      planeta<- peso*2.64/10
      escreval("O peso em Júpiter é: ",planeta)
   caso "E"
      planeta<- peso*1.15/10
      escreval("O peso em Saturno é: ",planeta)
   caso "F"
      planeta<- peso*1.17/10
      escreval("O peso em Urâno é: ",planeta)
   fimescolha

Fimalgoritmo