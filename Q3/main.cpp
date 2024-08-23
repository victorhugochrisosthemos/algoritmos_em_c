#include <iostream>

#define TMAX 5
using namespace std;

typedef struct{
    string nome;
    float notas[TMAX];
}Aluno;

void leiaAluno(int n, Aluno a[]){
    cout << "Aluno [" << n+1 << "] Informe o nome: ";
    getline(cin,a[n].nome);
    cout << "Aluno [" << n+1 << "] Informe as notas" << endl;
    for(int i = 0; i < TMAX - 1; i++){
        cout << "Nota " << i+1 << ": ";
        cin >> a[n].notas[i];
    }
}

char maisUmaRodada(){
    char valor;
    cout << "Mais um aluno? S/N ";
    valor = toupper(cin.get());
    return valor;
}

void calcularMediaAlunos(int n, Aluno a[]){
    for(int i = 0; i < n; i++){
        a[i].notas[TMAX - 1] = 0;
        for(int j = 0;  j < TMAX - 1; j++){
            a[i].notas[TMAX - 1] += a[i].notas[j];
        }
        a[i].notas[TMAX - 1] = a[i].notas[TMAX - 1] / 4;
    }
}

void mostrarAlunos(int n, Aluno a[]){
    cout << "\n-------------------------------------\n";
    for(int i = 0; i < n; i++){
        cout << "[" << i+1 << "] Nome: " << a[i].nome << endl;
        cout << "[" << i+1 << "] Media: " << a[i].notas[4] << endl;
        cout << " - - - - - - - - - - - - - - \n";
    }
}

int main()
{
    Aluno alunos[20];
    char maisUm;
    int contadorAlunos = 0;
    do{
        leiaAluno(contadorAlunos,alunos);
        cin.ignore();
        contadorAlunos++;
        maisUm = maisUmaRodada();
        cin.ignore();
    }while(maisUm == 'S');
    calcularMediaAlunos(contadorAlunos,alunos);
    mostrarAlunos(contadorAlunos,alunos);
    return 0;
}
