#include <iostream>
#include <stdio.h>

using namespace std;

int main()
{
    string matr,ma,situacao;
    char conceito;
    float n1,n2,n3,me,media;
    cout << "Qual eh a matricula? " << endl;
    getline(cin,matr);
    cout << "Digite o valor das notas 1, 2, 3 e a media de exercicios respectivamente";
    cin >> n1 >> n2 >> n3 >> me;
    media = (n1+n2*2+n3*3+me)/7;
    if (media>=4){
        if(media>=6){
            if(media>=7.5){
                if(media>=9){
                    conceito = 'A';
                    ma = ">= 9.0";
                }
                else{
                    conceito = 'B';
                    ma = ">=7.5 e < 9.0";
                }
            }
            else{
                conceito = 'C';
                ma = ">= 6.0 e < 7.5";
            }
        }
        else{
            conceito = 'D';
            ma = ">= 4.0 e < 6.0";
        }
    }
    else{
        conceito = 'E';
        ma = "< 4.0";
    }
    switch(conceito){
        case 'A':
        case 'B':
        case 'C':
            situacao = "Aprovado";
            break;
        case 'D':
        case 'E':
            situacao = "Reprovado";
            break;
    }
    cout << "Matricula do aluno: " << matr << endl;
    cout << "A media foi " << media << endl;
    cout << "A media dos exercicios eh " << me << endl;
    cout << "A media de aproveitamento eh: " << ma << " Conceito: "<< conceito << endl;
    cout << "Situacao: " << situacao << endl;
    return 0;
}
