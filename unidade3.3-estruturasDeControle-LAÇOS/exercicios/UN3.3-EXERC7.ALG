Algoritmo "UN3.3-EXERC7"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/09/2022
Var
   // Se��o de Declara��es das vari�veis
   maisVendedor,maisVenda,func:caractere
   preco,salario,total: real
   quant: inteiro
Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   repita
      escreval("Nome do funcion�rio: ")
      leia(func)
      repita
         escreval("Pre�o unit�rio do produto vendido: ")
         leia(preco)
         escreval("Quantidade do produto vendido: ")
         leia(quant)
         escreval("Este funcion�rio tem mais uma venda [S/N]? ", maisVenda)
         leia(maisVenda)
         total <- total + (preco*quant)
      ate maisVenda = "N"

      salario <- total*0.3
      escreval("Funcion�rio: ", func, " || Sal�rio: ", salario)
      escreval("Deseja digitar os dados de mais um vendedor [S/N]? ", maisVendedor)
      leia(maisVendedor)

   ate maisVendedor = "N"

Fimalgoritmo