Algoritmo "PAG159-QUESTAO5.15"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/10/2022
Var
   // Se��o de Declara��es das vari�veis
anos,meses,dias,dia_end,dia_start,mes_end,mes_start,ano_end,ano_start:inteiro

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   repita
      escreva("Data de in�cio - Informe o dia [dd]:")
      leia(dia_start)
      escreva("Data de in�cio - Informe o m�s [mm]:")
      leia(mes_start)
      escreva("Data de in�cio - Informe o ano [aaaa]:")
      leia(ano_start)
      escreva("Data final - Informe o dia [dd]:")
      leia(dia_end)
      escreva("Data final - Informe o m�s [mm]:")
      leia(mes_end)
      escreva("Data final - Informe o ano [aaaa]:")
      leia(ano_end)
   ate ano_end - ano_start >= 0
   se ano_end - ano_start = 0 entao
      se mes_end - mes_start < 0 entao
         escreval("Erro")
      senao
         se  mes_end - mes_start = 0  entao
            dias <- dia_end - dia_start
            escreval(dias, " dias!")
         senao
            meses <- mes_end - mes_start
            dias <- dia_end - dia_start
            escreval("Faltam ", dias, " dias e ",meses, " meses!")
         fimse
      fimse
   senao
      anos <- ano_end - ano_start
      meses <- mes_end - mes_start
      dias <- dia_end - dia_start
      escreval("Faltam ", dias, " dias e ",meses, " meses, e ", anos, " anos!")
   fimse

Fimalgoritmo