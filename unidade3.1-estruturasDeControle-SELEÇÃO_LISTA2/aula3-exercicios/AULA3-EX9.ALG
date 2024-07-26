Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 25/08/2022
Var
// Seção de Declarações das variáveis 
sal:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite o valor do salário do funcionário:")
leia(sal)

se (sal > 400) entao
   se (sal > 700) entao
      se (sal > 1000) entao
         se (sal > 1500) entao
            se (sal > 2000) entao
               //acima de 2000
               escreval("Sem aumento")
            senao
               //acima de 1500 e até 2000
               escreval("Aumento de 4%")
            fimse
         senao
            //acima de 1000 e até 1500
            escreval("Aumento de 7%")
         fimse
      senao
         //acima de 700 e até 1000
         escreval("Aumento de 10%")
      fimse
   senao
      //acima de 400 e até 700
      escreval("Aumento de 12%")
   fimse
senao
   //até 400
   escreval("Aumento de 15%")
fimse

Fimalgoritmo