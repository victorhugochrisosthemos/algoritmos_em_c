#include <iostream>

using namespace std;

#define TMAX 20

typedef struct{
    string nome;
    float notas[4];
    float media;
}Aluno;

int leiaValorInteiro(int limite){
    int n;
    do{
        cout << "Informe a quantidade desejada: ";
        cin >> n;
    }while(n <= 0 or n > limite);
    return n;
}

void leiaTurma(int n,Aluno t[]){
    for(int i = 0; i < n; i++){
        cin.ignore();
        cout << "Nome: "; getline(cin,t[i].nome);
        for(int j = 0; j < 4; j++){
            cout << "Nota " << j+1 << ": "; cin >> t[i].notas[j];
        }
    }
}

void gerarMediaAlunos(int n, Aluno t[]){
    for(int i = 0; i < n; i++){
        t[i].media = 0;
        for(int j = 0; j < 4; j++){
            t[i].media += t[i].notas[j];
        }
        t[i].media = t[i].media / 4;
    }
}

float gerarMediaTurma(int n, Aluno t[]){
    float mediaT = 0;
    for(int i = 0; i < n; i++){
        mediaT += t[i].media;
    }
    return mediaT/n;
}

void relatorioMF(int n, Aluno t[]){
    int cont = 0;
    float x = gerarMediaTurma(n,t);
    cout << "\n---------------------------------\nRelatorioMF\n";
    for(int i = 0; i < n; i++){
        cout << "Nome: " << t[i].nome << " // Media: " << t[i].media << endl;
        cout << " - - - - - - - - - \n";
    }
    cout << "Media da turma: " << x << endl;
    cout << "Quantidade de alunos abaixo da media: ";
    for(int i = 0; i < n; i++){
        if(t[i].media < x){
            cont++;
        }
    }
    cout << cont << endl;
}

int main()
{
    Aluno turma[TMAX];
    int nAlunos = leiaValorInteiro(TMAX);
    leiaTurma(nAlunos, turma);
    gerarMediaAlunos(nAlunos,turma);
    relatorioMF(nAlunos,turma);
    return 0;
}
