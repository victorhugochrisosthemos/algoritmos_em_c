#include <iostream>

using namespace std;

int main()
{
    int auxiliar,insc, inscAuxiliar,contadorSala, altura, maxima, minima, inscMaxima, inscMinima;
    float mediaSala;
    char outroAtleta;
    contadorSala = 1;
    mediaSala = 0;
    maxima = 0;
    minima = 0;
    do{

        cout << "Informe a inscricao do(a) atleta: " << endl;
        cin >> insc;
        cin.ignore();
        cout << "Informe a altura do(a) atleta (em centimetros): " << endl;
        cin >> altura;
        cin.ignore();
        if(altura > maxima){
            auxiliar = maxima;
            inscAuxiliar = insc;
            maxima = altura;
            inscMaxima = insc;
            if(auxiliar < minima or contadorSala == 2){
                minima = auxiliar;
                inscMinima = inscAuxiliar;
            }
        }
        if(altura < minima && contadorSala != 1){
            minima = altura;
            inscMinima = insc;
        }
        mediaSala = (mediaSala + altura)/contadorSala;
        cout << "Numeros de atletas na sala: " << contadorSala << endl;
        cout << "Altura maxima: " << maxima << " || Inscricao: " << inscMaxima << endl;
        cout << "Altura minima: " << minima << " || Inscricao: " << inscMinima << endl;
        cout << "Media da sala: " << mediaSala << endl;
        cout << "Deseja colocar outro(a) atleta [S/N]?" << endl;
        cin >> outroAtleta;
        cin.ignore();
        contadorSala++;
    }while(toupper(outroAtleta) == 'S');

    return 0;
}
