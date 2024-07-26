#include <iostream>

using namespace std;

int main()
{
    char maisAluno;
    string nome,igual18;
    int idade,maior20;
    maior20 = 0;
    igual18 = " ";
    do{
        cout << "Digite o nome do aluno e idade, respectivamente: ";
        getline(cin,nome);
        cin >> idade;
        cin.ignore();
        if(idade == 18){
            igual18 += " || " + nome;
        }
        if(idade > 20){
            maior20 = maior20 + 1;
        }
        cout << "Mais um aluno [S/N]? " << endl;
        cin.get(maisAluno);
        cin.ignore();
    } while(maisAluno == 'S');
    cout << "Alunos com 18 anos: " << igual18 << endl;
    cout << "Quantidade de alunos com mais de 20 anos: " << maior20 << endl;
    return 0;
}
