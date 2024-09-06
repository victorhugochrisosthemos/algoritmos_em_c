#include <iostream>

using namespace std;

void pegarDados(int turistas[],float renda[]){
    int x;
    float money;
    cout << "Informe o codigo da praia (1/42): "; cin >> x;
    cout << "Informe a renda: "; cin >> money;
    turistas[x]++;
    renda[x] += money;
}

int main()
{
    char maisUm;
    int turistas[42] = {0};
    float renda[42] = {0};
    do{
        pegarDados(turistas,renda);
        cout << "\nMais uma pesquisa? S/N "; cin.ignore(); maisUm = toupper(cin.get());
    }while(maisUm == 'S');
    cout << "Codigo da praia // Turistas // Renda Media   \n";
    for(int i = 1; i < 42; i++){
        cout << "      " << i + 1 << "             " << turistas[i] << "            " << renda[i] / turistas[i] << endl;
    }
    return 0;
}
