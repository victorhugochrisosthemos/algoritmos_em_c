Algoritmo "vetores-EX2"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/10/2022
Var
// Se��o de Declara��es das vari�veis 
 n,i: inteiro
 v: vetor [1..10] de real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
  repita
        escreval("Informe a quantidade N de valores da s�rie:")
        leia(n)
  ate (n > 0) e (n <=10)
  para i de 1 ate n  faca
       escreval("Valor",i,".Informe um valor real:")
       leia(v[i])
       escreval("-----------------------------------------")
  fimpara
  escreval("Valores iniciais")
  para i de 1 ate n faca
       escreva(v[i], " ")
  fimpara
  se n > 2 entao
      para i de 2 ate n - 1 faca
           v[i] <- (v[i - 1] + v[i] + v[i + 1])/3
      fimpara
  fimse
  escreval(" ")
  escreval("Valores suavizados")
  para i de 1 ate n faca
       escreva(v[i], " ")
  fimpara


Fimalgoritmo