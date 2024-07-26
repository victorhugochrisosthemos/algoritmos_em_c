Algoritmo "aula3-ex7"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/08/2022
Var
// Seção de Declarações das variáveis 
x,y,z,soma_um,soma_dois,soma_tres:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o valor do lado X do triângulo:")
leia(x)
escreval("Digite o valor do lado Y do triângulo:")
leia(y)
escreval("Digite o valor do lado Z do triângulo:")
leia(z)

soma_um <- x + y
soma_dois <- x + z
soma_tres <- y + z

se (x < soma_um) entao
   se (y < soma_dois) entao
      se (z < soma_tres) entao
         escreval("É um triângulo!")
         se (x = y) ou (x = z) ou (y = z) entao
            se (x = y) e (x = z) entao
               escreval("E é equilátero!")
            senao
               escreval("E é isósceles!")
            fimse
         senao
            escreval("E é escaleno!")
         fimse
      senao
         escreval("Não é um triângulo!")
      fimse
   senao
      escreval("Não é um triângulo!")
   fimse
senao
   escreval("Não é um triângulo!")
fimse

Fimalgoritmo