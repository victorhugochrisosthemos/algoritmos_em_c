Algoritmo "vetores-ex1"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/10/2022
Var
// Seção de Declarações das variáveis 
   nome: vetor [1..20] de caractere
   nota: vetor [1..20] de inteiro
   soma,media: real
   n,i,j: inteiro
   

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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
    escreval("Alunos igual ou acima da média")
    para i de 1 ate n faca
         se nota[i] >= media entao
              escreval(nome[i])
         senao
              j <- j + 1
         fimse
    fimpara
    escreval(j," aluno(s) abaixo da média")
Fimalgoritmo