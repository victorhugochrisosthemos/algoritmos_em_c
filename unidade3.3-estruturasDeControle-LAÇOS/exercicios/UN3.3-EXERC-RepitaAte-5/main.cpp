#include <iostream>


using namespace std;

int main()
{
    char sexo, maisAluno;
    float altura, mediaF, mediaG;
    int contadorF,contadorG;
    contadorF = 0;
    contadorG = 0;
    mediaF = 0;
    mediaG = 0;
    do {
        cout << "Escreva a altura da pessoa:" << endl;
        cin >> altura;
        cin.ignore();
        cout << "Escreva o sexo da pessoa[F/M]:" << endl;
        cin >> sexo;
        cin.ignore();
        if (sexo == 'F'){
            contadorF++;
            mediaF = (mediaF + altura) / contadorF;
        }
        contadorG++;
        mediaG = (mediaG + altura) / contadorG;
        cout << "Media da altura feminina: " << mediaF << endl;
        cout << "Media da altura da turma: " << mediaG << endl;
        cout << "Mais um aluno [S/N]? " << endl;
        cin >> maisAluno;
        cin.ignore();
    } while (maisAluno == 'S');
    return 0;
}
