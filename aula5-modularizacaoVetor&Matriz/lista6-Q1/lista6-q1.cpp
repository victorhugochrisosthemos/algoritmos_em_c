#include <iostream>

using namespace std;

int leiaValorInteiro(){
    int n;
    cin >> n;
    return n;
}

string leiaValorString(){
    string nome;
    cin.ignore();
    getline(cin,nome); // Só funcionou quando coloquei o cin .ignore antes de receber a variavel string
    return nome;
}

float leiaValorFloat(){
    float nota;
    cin >> nota;
    return nota;
}

void procedimento(int n,string nomes[],float notas[]){
    for(int i = 0; i < n; i++){
        cout << "Iteracao [" << i+1 << "]" << endl;
        cout << "Informe o nome: ";
        nomes[i] = leiaValorString();
        cout << "Informe a nota: ";
        notas[i] = leiaValorFloat();
    }
}

void mediaTurma(int x,float valores[], float &media){
    float soma = 0;
    for(int i = 0; i < x; i++){
        soma += valores[i];
    }
    media = soma / x;
    cout << "Media da turma = " << media << endl;
}

void estudantesMaiorMedia(int n, float &media, float notas[], string estudantes[]){
    cout << "Estudantes acima ou igual a media: ";
    for(int i = 0; i < n; i++){
        if(notas[i] >= media){
            cout << estudantes[i] << " // ";
        }
    }
    cout << "\n";
}

void estudantesMenorMedia(int n, float &media, float notas[], string estudantes[]){
    cout << "Estudantes abaixo da media: ";
    for(int i = 0; i < n; i++){
        if(notas[i] < media){
            cout << estudantes[i] << " // ";
        }
    }
    cout << "\n";
}

int main()
{
    int n;
    string estudantes[20];
    float notas[20], media;

    cout << "Quantidade de estudantes: ";
    n = leiaValorInteiro();
    procedimento(n,estudantes,notas);
    mediaTurma(n, notas, media);
    estudantesMaiorMedia(n, media, notas, estudantes);
    estudantesMenorMedia(n, media, notas, estudantes);

    return 0;
}
