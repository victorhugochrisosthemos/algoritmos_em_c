#include <iostream>

using namespace std;

#define TMAX 42

int main()
{
    char mais;
    int j,praia;
    float renda;
    float r_media[TMAX];
    int turistas[TMAX];
    j = 0;
    for(int i = 0;i < 42; i++){
        turistas[i] = 0;
    }
    do{
        j++;
        do{
            cout << "Praia de preferencia: " << endl;
            cin >> praia;
            cin.ignore();
        }while(praia < 0 && praia > 42);
        do{
            cout << "Informe a renda:" << endl;
            cin >> renda;
            cin.ignore();
        }while(renda < 0);
        turistas[praia] += 1;
        r_media[praia] += renda;
        cout << "Mais um turista? S/N" << endl;
        cin.get(mais);
        cin.ignore();
    }while(mais == 'S' && j <= 3000);
    cout << "---------------------------------------------------" << endl;
    cout << "Codigo da praia // Turistas // Renda media" << endl;
    for(int i = 0; i < 42; i++){
        if(turistas[i] == 0){
            cout << "Praia " << i + 1 << " // 0 turistas // R$ 0 " << endl;
        } else{
            cout << "Praia " << i + 1 << " // " << turistas[i] << " turistas // R$ " << r_media[i] / turistas[i] << endl;
        }
    }

    return 0;
}
