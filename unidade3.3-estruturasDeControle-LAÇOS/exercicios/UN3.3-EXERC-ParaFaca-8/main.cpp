#include <iostream>

using namespace std;

int main()
{
    char turma, presenca, adicionar;
    int quantAlunos, matricula,contador, nota, contPresente,contAusentes;
    float somaPresente, mediaPresente, percAusentes;
    somaPresente = 0;
    contador = 0;
    contPresente = 0;
    contAusentes = 0;
    quantAlunos = 0;
    do{
        do{
            cout << "Informe a turma [A/B]: ";
            cin.get(turma);
            cin.ignore();
            cout << "Informe a quantidade de alunos na sala: ";
            cin >> quantAlunos;
            cin.ignore();
            if (quantAlunos > 0){
                for (contador = 1; contador <= quantAlunos; contador++){
                    cout << "Aluno " << contador << "." << "Informe o numero de matricula do(a) aluno(a): ";
                    cin >> matricula;
                    cin.ignore();
                    cout << "Aluno " << contador << "." <<  "O(A) aluno(a) esta presente [P/A] ?  ";
                    cin.get(presenca);
                    cin.ignore();
                    cout <<  "Aluno " << contador << "." <<  "Qual a nota obtida na prova [0/10] ?  ";
                    cin >> nota;
                    cin.ignore();
                    cout << "---------------------------------------------------"<<endl;
                    if(presenca == 'P'){
                        contPresente++;
                        somaPresente += nota;
                    } else {
                        contAusentes++;
                    }

                }
            }
            else{
                cout << "A quantidade de alunos deve ser maior que 0!" << endl;
            }
        }while(quantAlunos < 0);

        mediaPresente = somaPresente / contPresente;
        percAusentes = (float(contAusentes)/quantAlunos)*100;

        cout << "Turma: " << turma << endl;
        cout << "Percentual de ausentes: " << percAusentes << "%"<< endl;
        cout << "Media de nota dos alunos presentes: " << mediaPresente << endl;
        cout << "Deseja adicionar outra turma [S/N]?" << endl;
        cin.get(adicionar);
        cin.ignore();
        mediaPresente = 0;
        percAusentes = 0;

    }while(adicionar == 'S');
    return 0;
}
