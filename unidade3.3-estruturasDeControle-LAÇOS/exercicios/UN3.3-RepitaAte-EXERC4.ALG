Algoritmo "un3.3-exerc4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 20/09/2022
Var
// Seção de Declarações das variáveis 
mais,nome, igual18: caractere
idade, acima20: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
repita
   escreval("Digite o nome do aluno:")
   leia(nome)
   escreval("Digite a idade do aluno:")
   leia(idade)
   se (idade > 20) entao
       acima20 <- acima20 + 1
       escreval("Quantidade de alunos acima de 20 anos: ", acima20)
   fimse
   se (idade = 18) entao
      igual18 <- igual18 + " " + nome
       escreval("Alunos com 18 anos: ", igual18)
   fimse
   escreval("Mais um aluno? [S/N]", mais)
   leia(mais)
ate (mais = "N")

Fimalgoritmo