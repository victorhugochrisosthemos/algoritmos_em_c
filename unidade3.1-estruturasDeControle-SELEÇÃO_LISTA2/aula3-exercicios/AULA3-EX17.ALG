Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/08/2022
Var
// Seção de Declarações das variáveis 
multiplo, desconto, preco, pagar: real
codigo, qtd: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Qual é o código do produto?")
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

escreval("Código: ", codigo)
escreval("Valor a ser pago: ", pagar)

Fimalgoritmo