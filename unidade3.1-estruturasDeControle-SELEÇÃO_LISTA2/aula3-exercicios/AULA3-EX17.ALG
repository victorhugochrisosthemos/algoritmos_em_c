Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/08/2022
Var
// Se��o de Declara��es das vari�veis 
multiplo, desconto, preco, pagar: real
codigo, qtd: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Qual � o c�digo do produto?")
leia(codigo)
escreval("Qual a quantidade?")
leia(qtd)

escolha (codigo)
   caso 100
      preco<- 13.00
   caso 101
      preco<- 12.50
   caso 102
      preco<- 12.00
   caso 103
      preco<- 12.25
   outrocaso
      escreval("Erro!")
fimescolha

multiplo<- qtd mod 5

se (multiplo = 0) entao
   desconto<- qtd - qtd div 5
   pagar<- preco*desconto
senao
   pagar<- preco*qtd
fimse

escreval("C�digo: ", codigo)
escreval("Valor a ser pago: ", pagar)

Fimalgoritmo