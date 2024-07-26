Algoritmo "pag159-Questao5.14"

// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/10/2022
Var
   // Seção de Declarações das variáveis
a,b,c,d:real
d10,d15,d20,d25,d_maior:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   repita
      escreval("Informe a largura do brinquedo em cm:")
      leia(a)
      escreval("Informe o comprimento do brinquedo em cm:")
      leia(b)
      escreval("Informe a altura do brinquedo em cm:")
      leia(c)
      d <- raizq(a^2 + b^2 + c^2)
      se d <= 10 entao
         d10 <- d10 + 1
      senao
         se d < 15 entao
            d15 <- d15 + 1
         senao
            se d < 20 entao
               d20 <- d20 + 1
            senao
               se d <= 25 entao
                   d25 <- d25 + 1
               senao
                   d_maior <- d_maior + 1
               fimse
            fimse
         fimse
      fimse
      escreval("-------------------------------")
      escreval("Diagonal maior do brinquedo digitado: ",d)
      escreval("-------------------------------")
      escreval("Quantidade de esferas de 10 cm: ",d10)
      escreval("Quantidade de esferas de 15 cm: ",d15)
      escreval("Quantidade de esferas de 20 cm: ",d20)
      escreval("Quantidade de esferas de 25 cm: ",d25)
      escreval("Quantidade de diagonais maior que 25 cm: ",d_maior)
      escreval("-------------------------------")
   ate (a <= 0) ou (b <= 0) ou (c <= 0)

Fimalgoritmo