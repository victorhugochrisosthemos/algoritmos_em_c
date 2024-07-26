/*  M1-EX3
04/09/2022
Trabalho avaliativo de algoritmos e programação I
Alunos: Victor Hugo Chrisosthemos Teixeira
        Ihoana Gatti Lopes

*/
#include <iostream>
#include <stdio.h>

using namespace std;

int main()
{
    string matr, situacao;
    char  conceito;
    float p1,p2,p3,me,media;

    cout << "Qual eh a matricula do aluno? " <<endl;
    getline(cin,matr);

    cout << "Qual a nota na prova 1? " <<endl;
    cin >> p1;

    cout << "Qual a nota na prova 2? " <<endl;
    cin >> p2;

    cout << "Qual a nota na prova 3? " <<endl;
    cin >> p3;

    cout << "Qual eh a media de exercicios? " <<endl;
    cin >> me;

    media = (p1 + p2*2 + p3*3 + me)/7;

    if (media>=4){
        if (media>=6){
            if (media>=7.5){
                if (media>=9){
                    conceito = 'A';
                }
                else{
                    conceito = 'B';
                }
            }
            else{
                conceito = 'C';
            }
        }
        else{
            conceito = 'D';
        }
    }
    else{
        conceito = 'E';
    }



    switch (conceito){
        case 'A':
        case 'B':
        case 'C':
        case 'D':
            situacao = "Aprovado";
            break;
        case 'E':
        case 'F':
            situacao = "Reprovado";
            break;

    }

    cout << "\nMatricula: " << matr << endl;
    cout << "A media do aluno eh: " << media << endl;
    cout << "Conceito: " << conceito << endl;
    cout << "Situacao: " << situacao << endl;

    //printf("A media do aluno eh: %2.f\n", media);
    /*
    caractere (char) é ''
    string (string) é ""
    char somente para uma letra
    */

    return 0;
}
