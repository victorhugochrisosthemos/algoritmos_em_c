Algoritmo "vetores-EX2"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/10/2022
Var
// Seção de Declarações das variáveis 
 n,i: inteiro
 v: vetor [1..10] de real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
  repita
        escreval("Informe a quantidade N de valores da série:")
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