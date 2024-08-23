#include <iostream>

using namespace std;

typedef struct{
    string nome;
    int idade;
}Aluno;

typedef struct{
    string sala;
    Aluno alunos[20];
}Tuma;

int main()
{
    cout << "Hello world!" << endl;
    return 0;
}
