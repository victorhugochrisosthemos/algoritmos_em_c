#include <iostream>

#define TMAX 5

using namespace std;

typedef struct{
    int dia;
    int mes;
    int ano;
}Data;

typedef struct{
    string nome;
    Data dataNascimento;
}Dependente;

typedef struct{
    string nome;
    int quantidadeDependentes;
    int matricula;
    Dependente dependentes[TMAX];
}Socio;

void leiaDependentes(int n, Socio s[]){
    int dependentes;
    do{
        cout << "Informe a quantidade de dependentes: ";
        cin >> dependentes;
        if(dependentes <= 5){
            s[n].quantidadeDependentes = dependentes;
            if(dependentes != 0){
                for(int i = 0; i < dependentes; i++){
                cout << "Dependente [" << i+1 << "] Informe o nome: ";
                cin.ignore();
                getline(cin, s[n].dependentes[i].nome);
                cout << "Informe a data de nascimento" << endl;
                cout << "Dia: ";
                cin >> s[n].dependentes[i].dataNascimento.dia;
                cout << "Mes: ";
                cin >> s[n].dependentes[i].dataNascimento.mes;
                cout << "Ano: ";
                cin >> s[n].dependentes[i].dataNascimento.ano;
            }
            }
        } else{
            cout << "Numero maximo de dependentes eh 5. Tente novamente.\n";
        }
    }while(dependentes > 5);
}

char outraRodada(){
    char valor;
    cout << "Mais um? S/N";
    valor = toupper(cin.get());
    return valor;
}

void leiaSocios(int n, Socio s[]){
    cout << "Socio [" << n+1 << "] Informe o nome: ";
    getline(cin,s[n].nome);
    cout << "Informe a matricula: ";
    cin >> s[n].matricula;
    leiaDependentes(n,s);
}

void mostrarSociosAcima3Dep(int n, Socio s[]){
    cout << "\n----------------------------------\n";
    cout << "Listagem de socios com mais de 3 dependentes" << endl;
    for(int i = 0; i < n; i++){
        if(s[i].quantidadeDependentes > 3){
            cout << "----------------------------------\n";
            cout << "Socio: " << s[i].nome << endl;
            cout << "Dependentes" << endl;
            for(int j = 0; j < s[i].quantidadeDependentes; j++){
                cout << "\n[" << j+1 << "]: " << s[i].dependentes[j].nome << endl;
            }
        }
    }
}

int main()
{
    char maisUm;
    Socio socios[20];
    int contadorSocios = 0;
    do{
        leiaSocios(contadorSocios,socios);
        cin.ignore();
        contadorSocios++;
        maisUm = outraRodada();
        cin.ignore();
    }while(maisUm == 'S' and contadorSocios < 20);
    mostrarSociosAcima3Dep(contadorSocios,socios);
    return 0;
}
