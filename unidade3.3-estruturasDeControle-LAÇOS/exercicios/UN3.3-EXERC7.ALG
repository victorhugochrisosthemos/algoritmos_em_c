Algoritmo "UN3.3-EXERC7"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/09/2022
Var
   // Seção de Declarações das variáveis
   maisVendedor,maisVenda,func:caractere
   preco,salario,total: real
   quant: inteiro
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   repita
      escreval("Nome do funcionário: ")
      leia(func)
      repita
         escreval("Preço unitário do produto vendido: ")
         leia(preco)
         escreval("Quantidade do produto vendido: ")
         leia(quant)
         escreval("Este funcionário tem mais uma venda [S/N]? ", maisVenda)
         leia(maisVenda)
         total <- total + (preco*quant)
      ate maisVenda = "N"

      salario <- total*0.3
      escreval("Funcionário: ", func, " || Salário: ", salario)
      escreval("Deseja digitar os dados de mais um vendedor [S/N]? ", maisVendedor)
      leia(maisVendedor)

   ate maisVendedor = "N"

Fimalgoritmo