Algoritmo "M2-EX5"
// Disciplina   : [Algoritmos e Programa��o]
// Professora   : Fernanda
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Victor Hugo Chrisosthemos Teixeira
// Data atual  : 06/10/2022
Var
   // Se��o de Declara��es das vari�veis
   res,com,ind,kwh_mes, pagar, kwh_res, kwh_com, kwh_ind, kwh_geral: real
   id_cons, contador:inteiro
   tipo_cons,mais_cons:caractere

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   repita
      escreval("C�digo do tipo de consumidor")
      escreva("Informe o pre�o do kWh para o c�digo residencial:")
      leia(res)
      escreva("Informe o pre�o do kWh para o c�digo comercial:")
      leia(com)
      escreva("Informe o pre�o do kWh para o c�digo industrial:")
      leia(ind)
   ate (ind > 0) e (com > 0) e (ind > 0)
   repita
      repita
         escreval("-----------------------------------------------")
         escreval("Dados do consumidor")
         escreva("Informe o n�mero de identifica��o do consumidor:")
         leia(id_cons)
         escreva("Informe a quantidade de kWh consumido no m�s:")
         leia(kwh_mes)
      ate (id_cons > 0) e (kwh_mes > 0)
      repita
         escreval("[R] Residencial")
         escreval("[C] Comercial")
         escreval("[I] Industrial")
         escreva("Informe o tipo de consumidor:")
         leia(tipo_cons)
      ate (tipo_cons = "R") ou (tipo_cons = "C") ou (tipo_cons = "I")
      escolha tipo_cons
      caso "R"
         pagar <- res*kwh_mes
         kwh_res <- kwh_res + kwh_mes
      caso "C"
         pagar <- com*kwh_mes
         kwh_com <- kwh_com + kwh_mes
      caso "I"
         pagar <- ind*kwh_mes
         kwh_ind <- kwh_ind + kwh_mes
      fimescolha
      kwh_geral <- kwh_geral + kwh_mes
      contador <- contador + 1
      
      escreval("-----------------------------------------------")
      escreval("Dados do consumidor")
      escreval("N�mero de identifica��o: ",id_cons)
      escreval("Total a pagar: ", pagar)
      escreval("-  -  -  -  -  -  -  -  -  -  -  -")
      escreval("Informa��es gerais")
      escreval("[R] Residencial: ", kwh_res," kWh")
      escreval("[C] Comercial: ", kwh_com," kWh")
      escreval("[I] Industrial: ", kwh_ind," kWh")
      escreval("Quantidade m�dia geral de consumo: ", kwh_geral/contador, " kWh")
      escreval("----------------------------------------------")
      
      repita
         escreval("Mais consumidor? [S/N]")
         leia(mais_cons)
      ate (mais_cons = "S") ou (mais_cons = "N")
   ate mais_cons = "N"

Fimalgoritmo