#include <iostream>

using namespace std;

int leiaNInt(){
    int n;
    cout << "-------------------------\n";
    cout << "Informe um valor: ";
    cin >> n;
    cin.ignore();
    return n;
}

void insereOrdenado(int elem, int &n, int vet[]){
    if(n == 0){
        vet[n] = elem;
    }else{
        for(int i = 0; i <= n; i++){
            if(vet[i] > elem){
                swap(vet[i],elem);
            }else{
                if(i == n){
                    vet[i] = elem;
                }
            }
        }
    }
    cout << "[" << n << "]: ";
    for(int i = 0; i <= n; i++){
        cout << vet[i] << " ";
    }
    cout << endl;
    n++;
}

int main()
{
    int vet[10], n=0, elem;
    do{
        elem = leiaNInt();
        insereOrdenado(elem,n,vet);
    }while(n < 10);
    return 0;
}
