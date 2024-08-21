#include <iostream>

#define TMAX 50
using namespace std;

typedef struct{
    string nome;
    float salario;
}Funcionario;

char repetirProcesso(){
    char valor;
    cout << "Mais um funcionario? S/N ";
    cin.ignore();
    valor = toupper(cin.get());
    return valor;
}

void leiaFuncionario(int n, Funcionario f[]){
    cout << "Nome: ";
    cin.ignore();
    getline(cin, f[n].nome);
    cout << "Salario: ";
    cin >> f[n].salario;
}

float gerarMediaSalario(int n,Funcionario e[]){
    int soma = 0;
    for(int i = 0; i < n; i++){
        soma += e[i].salario;
    }
    return soma / n;
}

void salariosAcimaMedia(int n, Funcionario e[]){
    float mediaSalarial;
    mediaSalarial = gerarMediaSalario(n,e);
    cout << "Media salarial: " << mediaSalarial << endl;
    cout << "Salarios acima da media: ";
    for(int i = 0; i < n; i++){
        if(e[i].salario > mediaSalarial){
            cout << "Nome: " << e[i].nome << " // Salario: " << e[i].salario;
        }
        cout << endl;
    }
}

int main()
{
    Funcionario empresa[TMAX]; //TMAX = 20
    char maisUm;
    int contadorFunc = 0;
    do{
        leiaFuncionario(contadorFunc,empresa);
        maisUm = repetirProcesso();
        contadorFunc++;
    }while(maisUm == 'S' or contadorFunc == TMAX);
    salariosAcimaMedia(contadorFunc,empresa);
    return 0;
}
