Algoritmo "vetores-ex1"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/10/2022
Var
// Se��o de Declara��es das vari�veis 
   nome: vetor [1..20] de caractere
   nota: vetor [1..20] de inteiro
   soma,media: real
   n,i,j: inteiro
   

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
    repita
          escreval("Informe a quantidade N de estudantes:")
          leia(n)
    ate (n > 0) e (n <= 20)
    para i de 1 ate n faca
          escreval("Aluno",i,".Informe o nome:")
          leia(nome[i])
          escreval("Aluno",i,".Informe a nota:")
          leia(nota[i])
          escreval("------------------------------")
          soma <- soma + nota[i]
    fimpara
    media <- soma / n
    escreval("Alunos igual ou acima da m�dia")
    para i de 1 ate n faca
         se nota[i] >= media entao
              escreval(nome[i])
         senao
              j <- j + 1
         fimse
    fimpara
    escreval(j," aluno(s) abaixo da m�dia")
Fimalgoritmo