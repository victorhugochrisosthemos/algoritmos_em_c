Algoritmo "vetores-ex9"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/10/2022
Var
   // Se��o de Declara��es das vari�veis
   n,i:inteiro
   pesq,mais:caractere
   nome:vetor[1..30] de caractere
   nota:vetor[1..30] de real
   achou: logico

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   repita
      escreval("Informe a quantidade N de estudantes:")
      leia(n)
   ate (n > 0) e (n < 31)
   para i de 1 ate n faca
      repita
         escreval("Aluno ", i)
         escreval("Informe o nome: ")
         leia(nome[i])
      ate nome[i] <> " "
      repita
         escreval("Informe nota: ")
         leia(nota[i])
      ate nota[i] >= 0
      escreval("-------------------------")
   fimpara
   repita
      achou<- falso
      escreval("PESQUISA")
      escreval("Informe o nome a ser pesquisado:")
      leia(pesq)
      para i de 1 ate n faca
         se nome[i] = pesq entao
            escreval("Est� na turma, sua nota � ",nota[i])
            achou <- verdadeiro
         fimse
         se (i = n) e (nome[i] <> pesq) e (nao achou) entao
            escreval("Pessoa inexistente")
         fimse
      fimpara
      escreval("Realizar mais uma pesquisa? S/N")
      leia(mais)
   ate mais <> "S"

Fimalgoritmo