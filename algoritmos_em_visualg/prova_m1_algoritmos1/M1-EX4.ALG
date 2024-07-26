Algoritmo "M1-EX4"
// Disciplina   : Algoritmos e programação I
// Professor   : Fernanda Cunha
// Descrição   : Exercício 4 da M1
// Autor(a)    : Victor Hugo Chrisosthemos Teixeira
//               Ihoana Gatti Lopes
// Data atual  : 04/09/2022
Var
   // Seção de Declarações das variáveis
   op1,op2,op3:inteiro
   alim, bebida, sobre, total:real
   desc1,desc2,desc3: caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("Deseja qual item de alimentação? ")
   leia(op1)
   escreval("Deseja qual item de bebida? ")
   leia(op2)
   escreval("Deseja qual item de sobremesa? ")
   leia(op3)
   
   se (op1 > 1) e (op1 < 4) e  (op2 > 5) e (op2 < 6) e (op3 > 7) e (op3 < 9)  entao
         escreval("Erro")
   senao
         escolha op1
         caso 01
            alim<- 30.5
            desc1<- "Hamburguer"
         caso 02
            alim<- 25.5
            desc1<- "Chessburguer"
         caso 03
            alim<- 18.0
            desc1<- "Cachorro quente"
         caso 04
            alim<- 20.5
            desc1<- "Sanduíche Natural"
      fimescolha

      escolha op2
         caso 5
            bebida<- 6.5
            desc2<- "Refrigerante"
         caso 6
            bebida<- 9.5
            desc2<- "Suco Natural"
      fimescolha

      escolha op3
         caso 7
            sobre<- 15.5
            desc3<- "Milk Shake"
         caso 8
            sobre<- 20.0
            desc3<- "Sundae"
         caso 9
            sobre<- 15.0
            desc3<- "Casquinha"
      fimescolha

      escreval("Alimentação: ",desc1)
      escreval("R$ ",alim)
      escreval("Bebida: ",desc2)
      escreval("R$ ",bebida)
      escreval("Sobremesa: ",desc3)
      escreval("R$ ",sobre)
      total<-alim+bebida+sobre
      escreval("Total a pagar: ",total)
   fimse
Fimalgoritmo