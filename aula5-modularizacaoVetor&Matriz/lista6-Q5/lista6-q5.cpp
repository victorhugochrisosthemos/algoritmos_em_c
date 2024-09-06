#include <iostream>

using namespace std;

int leiaValorInteiro(){
    int x;
    cin >> x;
    return x;
}

void lerInscricaoAltura(int n, int vetorA[],int vetorB[]){
    for(int i = 0; i < n; i++){
        cout << "[" << i + 1 << "]Inscricao: ";
        vetorA[i] = leiaValorInteiro();
        cout << "[" << i + 1 << "]Altura: ";
        vetorB[i] = leiaValorInteiro();
    }
}

void mediaAltura(float &media, int &n,int altura[]){
    int soma = 0;
    for(int i = 0; i < n; i++){
        soma += altura[i];
    }
    media = soma/n;
}

void maiorAltura(int n, int vetorA[],int vetorB[]){
    int maior = vetorA[0];
    int indice;
    for(int i = 0; i < n; i++){
        if(vetorA[i] > maior){
            maior = vetorA[i];
            indice = i;
        }
    }
    cout << maior << " // Inscricao: " << vetorB[indice] << endl;
}

void menorAltura(int n, int vetorA[],int vetorB[]){
    int menor = vetorA[0];
    int indice;
    for(int i = 0; i < n; i++){
        if(vetorA[i] < menor){
            menor = vetorA[i];
            indice = i;
        }
    }
    cout << menor << " // Inscricao: " << vetorB[indice] << endl;
}

int main()
{
    int inscricao[100],n,altura[100];
    float media;

    cout << "Informe a quantidade de alunos: ";
    n = leiaValorInteiro();
    cout << "Informe a inscricao (ex: 000001) e a altura (ex: 165) em cm" << endl;
    lerInscricaoAltura(n,inscricao,altura);
    cout << "-------------------------------------------------------\n";
    mediaAltura(media,n,altura);
    cout << "Media de altura: " << media << endl;
    cout << "Maior altura: "; maiorAltura(n,altura,inscricao);
    cout << "Menor altura: "; menorAltura(n,altura,inscricao);

    return 0;
}
