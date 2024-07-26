#include <iostream>

using namespace std;

#define TMAX 100

int main()
{
    int insc[TMAX], altura[TMAX];
    int n,soma,maior,menor,maior_insc,menor_insc;
    soma = 0;
    do{
        cout << "Informe a quantidade N de termos:" << endl;
        cin >> n;
        cin.ignore();
    }while(n < 0 && n > 100);
    cout << "-----------------------------------" << endl;
    for(int i = 0; i < n; i++){
        cout << "Iteracao " << i + 1 << endl;
        do{
            cout << "Informe a inscricao do(a) atleta:" << endl;
            cin >> insc[i];
            cin.ignore();
        }while( insc[i] < 0);
        do{
            cout << "Informe a altura do(a) atleta em cm:" << endl;
            cin >> altura[i];
            cin.ignore();
        }while(altura[i] < 0);
        cout << "-----------------------------------" << endl;
        soma += altura[i];
        if(i == 0){
            maior = altura[i];
            maior_insc = insc[i];
            menor = altura[i];
            menor_insc = insc[i];
        } else{
            if(altura[i] > maior){
                maior = altura[i];
                maior_insc = insc[i];
            }
            if(altura[i] < menor){
                menor = altura[i];
                menor_insc = insc[i];
            }
        }
    }
    cout << "Atleta mais alto" << endl;
    cout << "   Inscricao: " << maior_insc << " cm" << endl;
    cout << "   Altura: " << maior << " cm" << endl;
    cout << "Atleta mais baixo" << endl;
    cout << "   Inscricao: " << menor_insc << " cm" << endl;
    cout << "   Altura: " << menor << " cm" << endl;
    cout << "Altura media: " << (float)soma / n << " cm" << endl;


    return 0;
}
