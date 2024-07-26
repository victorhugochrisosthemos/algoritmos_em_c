Algoritmo "vetores-ex5"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/10/2022
Var
   // Seção de Declarações das variáveis
   n,i,soma,maior,maior_insc,menor,menor_insc:inteiro
   insc:vetor [1..100] de inteiro
   altura:vetor[1..10] de inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   repita
      escreval("Informe a quantidade N de pares de valores:")
      leia(n)
   ate (n > 0) e (n < 101)
   para i de 1 ate n faca
      escreval("Atleta ",i)
      escreval("Informe a inscrição: ")
      leia(insc[i])
      escreval("Informe a altura em cm:")
      leia(altura[i])
      escreval("----------------------------")
      soma <- soma + altura[i]
      se i = 1 entao
         maior <- altura[i]
         maior_insc <- insc[i]
         menor <- altura[i]
         menor_insc <- insc[i]
      senao
         se altura[i] > maior entao
            maior <- altura[i]
            maior_insc <- insc[i]
         fimse
         se altura[i] < menor entao
            menor <- altura[i]
            menor_insc <- insc[i]
         fimse
      fimse
   fimpara
   escreval("Atleta mais alto")
   escreval("       Inscrição: ", maior_insc)
   escreval("       Altura: ", maior)
   escreval("Atleta mais baixo")
   escreval("       Inscrição: ", menor_insc)
   escreval("       Altura: ", menor)
   escreval("Altura média da turma: ", soma / n)

Fimalgoritmo