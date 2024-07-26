Algoritmo "M2-EX5"
// Disciplina   : [Algoritmos e Programação]
// Professora   : Fernanda
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Victor Hugo Chrisosthemos Teixeira
// Data atual  : 06/10/2022
Var
   // Seção de Declarações das variáveis
   res,com,ind,kwh_mes, pagar, kwh_res, kwh_com, kwh_ind, kwh_geral: real
   id_cons, contador:inteiro
   tipo_cons,mais_cons:caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   repita
      escreval("Código do tipo de consumidor")
      escreva("Informe o preço do kWh para o código residencial:")
      leia(res)
      escreva("Informe o preço do kWh para o código comercial:")
      leia(com)
      escreva("Informe o preço do kWh para o código industrial:")
      leia(ind)
   ate (ind > 0) e (com > 0) e (ind > 0)
   repita
      repita
         escreval("-----------------------------------------------")
         escreval("Dados do consumidor")
         escreva("Informe o número de identificação do consumidor:")
         leia(id_cons)
         escreva("Informe a quantidade de kWh consumido no mês:")
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
      escreval("Número de identificação: ",id_cons)
      escreval("Total a pagar: ", pagar)
      escreval("-  -  -  -  -  -  -  -  -  -  -  -")
      escreval("Informações gerais")
      escreval("[R] Residencial: ", kwh_res," kWh")
      escreval("[C] Comercial: ", kwh_com," kWh")
      escreval("[I] Industrial: ", kwh_ind," kWh")
      escreval("Quantidade média geral de consumo: ", kwh_geral/contador, " kWh")
      escreval("----------------------------------------------")
      
      repita
         escreval("Mais consumidor? [S/N]")
         leia(mais_cons)
      ate (mais_cons = "S") ou (mais_cons = "N")
   ate mais_cons = "N"

Fimalgoritmo