#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    char ligada, casa;
    int canal, pessoas, pessoas4,pessoas5,pessoas9,pessoas12, somaPessoas;
    float aud4, aud5, aud9, aud12;
    pessoas4 = 0;
    pessoas5 = 0;
    pessoas9 = 0;
    pessoas12 = 0;
    somaPessoas = 0;
    do{
        cout << "A TV esta ligada [S/N]? " << endl;
        cin.get(ligada);
        cin.ignore();
        if (ligada == 'S'){
            cout << "Qual o numero do canal? " << endl;
            cin >> canal;
            cin.ignore();
            cout << "Quantas pessoas estao vendo? " << endl;
            cin >> pessoas;
            cin.ignore();
            switch(canal){
                case 4:
                    pessoas4 += pessoas;
                    break;
                case 5:
                    pessoas5 += pessoas;
                    break;
                case 9:
                    pessoas9 += pessoas;
                    break;
                case 12:
                    pessoas12 += pessoas;
                    break;
            }
        } else {
            pessoas = 0;
        }
        somaPessoas = somaPessoas + pessoas;
        aud4 = (float)pessoas4 / somaPessoas*100;
        aud5 = (float)pessoas5 / somaPessoas*100;
        aud9 = (float)pessoas9 / somaPessoas*100;
        aud12 = (float)pessoas12 / somaPessoas*100;
        cout << "Total de telespectadores: " << somaPessoas << endl;
        cout << fixed << setprecision(2);
        cout << aud4 << "% do canal 4." << endl;
        cout << aud5 << "% do canal 5." << endl;
        cout << aud9 << "% do canal 9." << endl;
        cout << aud12 << "% do canal 12." << endl;

        cout << "Mais uma casa [S/N]? " << endl;
        cin.get(casa);
        cin.ignore();
    }while(casa == 'S');


    return 0;
}
