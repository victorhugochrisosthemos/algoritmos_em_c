Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/08/2022
Var
// Seção de Declarações das variáveis 
func:caractere
extras,faltas,premio:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o nome do funcionário:")
leia(func)
escreval("Qual o número de horas extras dele?")
leia(extras)
escreval("E quantas horas de faltas?")
leia(faltas)

premio<- extras - faltas*2/3

se (extras > 10) entao
   se (extras > 20) entao
      se (extras > 30) entao
         se (extras > 40) entao
            escreval("Funcionário: ",func)
            escreval("Gratificação: R$ 1.000,00")
         senao
            escreval("Funcionário: ",func)
            escreval("Gratificação: R$ 800,00")
         fimse
      senao
         escreval("Funcionário: ",func)
         escreval("Gratificação: R$ 600,00")
      fimse
   senao
      escreval("Funcionário: ",func)
      escreval("Gratificação: R$ 400,00")
   fimse
senao
   escreval("Funcionário: ",func)
   escreval("Gratificação: R$ 200,00")
fimse

Fimalgoritmo