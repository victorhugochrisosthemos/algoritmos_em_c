#include <iostream>
#include <string>
#include <cstdlib>

#define TMAX 100

using namespace std;

typedef struct {
    int dia, mes, ano;
}Data;

typedef struct {
    string titulo, autor, isbn;
    int quantidadeAcervo, quantidadeDisponivel;
}Livro;

typedef struct {
    string isbn, matricula;
    Data devolucao;
}Emprestimo;

void menu();
int leiaOpcao();
void incluirLivro(int&, Livro[]);
void consultarLivro(int, Livro[]);
void excluirLivro(int&, Livro[]);
int emprestimoExemplar(int, int, Livro[], Emprestimo[]);
void devolucao(int, int, Livro[], Emprestimo[]);
void relatorio1(int, Livro[]);
void relatorio2(int, Emprestimo[]);
void dadosData(int, Emprestimo[]);
int buscaBinariaRecursiva(string, int, int, Livro[]);
int repartir(int, int, Livro[]);
void quicksort(int, int, Livro[]);
int validarNumero();
bool validarIsbn(string);
string leiaIsbn();
string validarAutor();


int main()
{
    int opcao, contadorAcervo = 0, contadorEmprestimos = 0;
    Livro acervo[TMAX];
    Emprestimo emprestimos[TMAX];
    do {
        menu();
        opcao = leiaOpcao();
        switch (opcao) {
        case 1:
            incluirLivro(contadorAcervo, acervo);
            break;
        case 2:
            consultarLivro(contadorAcervo, acervo);
            break;
        case 3:
            excluirLivro(contadorAcervo, acervo);
            break;
        case 4:
            contadorEmprestimos = emprestimoExemplar(contadorAcervo, contadorEmprestimos, acervo, emprestimos);
            break;
        case 5:
            devolucao(contadorAcervo, contadorEmprestimos, acervo, emprestimos);
            break;
        case 6:
            relatorio1(contadorAcervo, acervo);
            break;
        case 7:
            relatorio2(contadorEmprestimos, emprestimos);
            break;
        case 8:
            break;
        }
    } while (opcao != 8);
    return 0;
}

void menu() {
    cout << "----------------------------------------" << endl;
    cout << "1 - Inclusao de um novo livro" << endl;
    cout << "2 - Consulta a um livro" << endl;
    cout << "3 - Exclusao de um livro" << endl;
    cout << "4 - Emprestimo de um exemplar" << endl;
    cout << "5 - Devolucao" << endl;
    cout << "6 - Relatorio1" << endl;
    cout << "7 - Relatorio2" << endl;
    cout << "8 - Sair do programa" << endl;
}

int leiaOpcao() {
    int valor;
    do {
        cout << " - - - - - - - - - " << endl;
        valor = validarNumero();
        if (valor < 1 or valor > 8) {
            cout << "Opcao invalida! Tente novamente!" << endl;
        }
    } while (valor < 1 or valor > 8);
    return valor;
}

void incluirLivro(int& n, Livro l[]) {
    bool achou = false;
    int i;
    //qntd;
    //char confirm;
    string isbn = leiaIsbn();

    if (n != 0) {
        i = buscaBinariaRecursiva(isbn, 0, n - 1, l);
        if (i != -1) achou = true;
    }

    if (!achou) {
        l[n].isbn = isbn;
        cout << "Informe o titulo do livro: ";
        getline(cin, l[n].titulo);
        l[n].autor = validarAutor();
        cout << "Informe a quantidade de exemplares disponiveis, ";
        l[n].quantidadeAcervo = validarNumero();
        l[n].quantidadeDisponivel = l[n].quantidadeAcervo;
        cout << "Inclusao do titulo confirmada!" << endl;
        n++;
    }
    else {
        cout << "Titulo ja existente!" << endl;
    }

    quicksort(0, n - 1, l);

}

void consultarLivro(int n, Livro a[]) {
    int i; //
    a[n].isbn = leiaIsbn();
    cout << " -- -- -- -- -- -- -- -- \n";
    i = buscaBinariaRecursiva(a[n].isbn, 0, n - 1, a);
    if (i == -1) {
        cout << "Titulo inexistente!" << endl;
    }
    else {
        cout << "Titulo: " << a[i].titulo << endl;
        cout << "Autor: " << a[i].autor << endl;
        cout << "Quantidade de livros no acervo: " << a[i].quantidadeAcervo << endl;
        cout << "Quantidade de livros disponiveis: " << a[i].quantidadeDisponivel << endl;
    }
}

void excluirLivro(int& n, Livro a[]) {
    int i;
    char conf;
    a[n].isbn = leiaIsbn();
    cout << " -- -- -- -- -- -- -- -- \n";
    i = buscaBinariaRecursiva(a[n].isbn, 0, n - 1, a);
    if (i == -1) {
        cout << "Titulo inexistente, impossivel excluir" << endl;
    }
    else {
        cout << "deseja realmente excluir? (s/n) ";
        conf = toupper(cin.get());
        cin.ignore();
        if (conf == 'S') {
            for (; i <= n; i++) {
                swap(a[i], a[i + 1]);
            }
            n--;
            cout << "Exclusao realizada com sucesso!" << endl;
        }
    }
}

int emprestimoExemplar(int n, int c, Livro a[], Emprestimo e[]) {
    int i;
    string titulo, autor;
    a[n].isbn = leiaIsbn();
    cout << " -- -- -- -- -- -- -- -- \n";
    i = buscaBinariaRecursiva(a[n].isbn, 0, n - 1, a);
    if (i == -1) {
        cout << "Titulo inexistente!" << endl;
    }
    else {
        if (a[i].quantidadeDisponivel <= 0) {
            cout << "Exemplar indisponivel para emprestimo" << endl;
        }
        else {
            e[c].isbn = a[n].isbn;
            cout << "Informe a matricula do Aluno/Professor: ";
            cin.ignore();
            getline(cin, e[c].matricula);
            dadosData(c, e);
            a[i].quantidadeDisponivel--;
            cout << "Emprestimo realizado - codigo " << c << endl;
            c++;
        }
    }
    return c;
}

void devolucao(int n, int c, Livro l[], Emprestimo e[]) {
    int codigo, i;
    bool achou = false;
    string matricula;
    cout << "Informe o codigo do emprestimo: ";
    cin >> codigo;
    for (i = 0; i <= c; i++) {
        if (codigo == i) {
            achou = true;
            break;
        }
    }
    if (!achou) {
        cout << "Registro inexistente" << endl;
    }
    else {
        if (e[i].matricula == "-1") {
            cout << "Devolucao ja realizada!" << endl;
        }
        else {
            cout << "Confirme a matricula do Aluno/Professor: ";
            cin.ignore();
            getline(cin, e[c].matricula);
            if (matricula != e[i].matricula) {
                cout << "Matricula invalida!" << endl;
            }
            else {
                e[i].matricula = "-1";
                for (i = 0; i < n; i++) {
                    if (l[i].isbn == e[i].isbn) {
                        l[i].quantidadeDisponivel++;
                        break;
                    }
                }
                cout << "Devolucao realizada!" << endl;
            }
        }
    }
}

void relatorio1(int n, Livro l[]) {
    cout << "--------------[Livros do Acervo]---------------------------------------\n";
    for (int i = 0; i < n; i++) {
        cout << " - - - - - " << "[" << i + 1 << "] - - - - - - \n";
        cout << "Titulo: " << l[i].titulo << endl;
        cout << "Autor: " << l[i].autor << endl;
        cout << "Quantidade no acervo: " << l[i].quantidadeAcervo << endl;
        cout << "Quantidade para emprestimos: " << l[i].quantidadeDisponivel << endl;
        cout << "ISBN: " << l[i].isbn << endl;
        cout << " - - - - - - - - - - - \n";
    }
}

void relatorio2(int n, Emprestimo e[]) {
    cout << "----------------[Emprestimos ativos]-------------------------------------\n";
    for (int i = 0; i < n; i++) {
        if (e[i].matricula != "-1") {
            cout << " - - - - - " << "[Emprestimo " << i << "] - - - - - - \n";
            cout << "ISBN do livro: " << e[i].isbn << endl;
            cout << "Matricula do Aluno/Professor: " << e[i].matricula << endl;
            cout << "Data de devolucao: " << e[i].devolucao.dia << "/" << e[i].devolucao.mes << "/" << e[i].devolucao.ano << endl;
            cout << " - - - - - - - - - - - \n";
        }
    }
}
int validarNumero() {
    string frase;
    int numero;
    bool validou;
    do {
        validou = true;
        cout << "informe um numero: ";
        getline(cin, frase);
        if (frase.size() > 0) {
            for (unsigned int i = 0; i < frase.size(); i++) {
                if (!isdigit(frase[i])) {
                    cout << "Nao eh numero! Tente novamente." << endl;
                    validou = false;
                    break;
                }
            }
            if (validou) {
                numero = atoi(frase.c_str());
            }
        }
    } while (!validou);
    return numero;
}
void dadosData(int n, Emprestimo p[]) {
    cout << "Informe a data do emprestimo" << endl;
    do {
        cout << "Dia: ";
        p[n].devolucao.dia = validarNumero();
        if (p[n].devolucao.dia < 1 or p[n].devolucao.dia > 31) {
            cout << "Dado invalido! Tente novamente." << endl;
        }
    } while (p[n].devolucao.dia < 1 or p[n].devolucao.dia > 31);
    do {
        cout << "Mes: ";
        p[n].devolucao.mes = validarNumero();
        if (p[n].devolucao.mes < 1 or p[n].devolucao.mes > 12) {
            cout << "Dado invalido! Tente novamente." << endl;
        }
    } while (p[n].devolucao.mes < 1 or p[n].devolucao.mes > 12);
    do {
        cout << "Ano: ";
        p[n].devolucao.ano = validarNumero();
        if (p[n].devolucao.ano < 2023) {
            cout << "Dado invalido! Tente novamente." << endl;
        }
    } while (p[n].devolucao.ano < 2023);
    if (p[n].devolucao.mes == 12) {
        p[n].devolucao.mes = 1;
        p[n].devolucao.ano = p[n].devolucao.ano + 1;
    }
    else {
        p[n].devolucao.mes = p[n].devolucao.mes + 1;
    }
}
bool validarIsbn(string isbn) {
    bool valor = true;
    for (unsigned int i = 0; i < isbn.size(); i++) {
        if (i == 3 or i == 5 or i == 8 or i == 15) {
            //3,5,8,15
            if (isbn[i] != '-') {
                valor = false;
                break;
            }
        }
        else {
            if (!isdigit(isbn[i])) {
                valor = false;
                break;
            }
        }
    }
    return valor;
}

string leiaIsbn() {
    string isbn;
    bool validou = false;
    do {
        cout << "Informe o isbn do livro (Ex:978-3-16-148410-0): ";
        getline(cin, isbn);
        if (isbn.size() == 17) {
            validou = validarIsbn(isbn);
        }
        if (!validou) {
            cout << "Informacao invalida! Tente novamente." << endl;
        }
    } while (!validou);
    return isbn;
}
string validarAutor() {
    string frase;
    bool validou;
    do {
        validou = true;
        cout << "Informe o autor: ";
        getline(cin, frase);
        if (frase.size() < 2) {
            cout << "Autor invalido! Tente novamente." << endl;
            validou = false;
        }
    } while (!validou);
    return frase;
}

int buscaBinariaRecursiva(string x, int e, int d, Livro vetor[]) { // e para o elemento mais a esquerda do vetor(0) ou subvetor, x o individuo a ser achado, n o elemento mais a direita (vetor e sub)

    if (e > d) return -1; // condição de parada caso não exista o x no vetor
    int meio = (e + d) / 2; // cria um meio pro vetor (e subvetores posteriormente) /
    if (x == vetor[meio].isbn) return meio;
    else
    {
        if (x < vetor[meio].isbn) return buscaBinariaRecursiva(x, e, meio - 1, vetor); //n = meio, tirando a necessidade dos numeros depois do n serem verificados
        else return buscaBinariaRecursiva(x, meio + 1, d, vetor);  //e = meio, tirando a necessidade dos numeros antes do e de serem verificados
    }
}
int repartir(int esquerda, int direita, Livro vetor[]) {

    string pivo = vetor[direita].isbn; // o pivo começa no elemento mais a direita
    int ponto = esquerda; // cria um ponto index

    for (int i = esquerda; i < direita; i++) // caso já esteja organizado isso não fará nada porém
    {
        if (vetor[i].isbn <= pivo) // os numeros maiores ou iguais ao pivo vao ser mandados para a direita até chegar no pivo.
        {
            swap(vetor[i], vetor[ponto]);
            ponto++;
        }
    }

    // troca o ponto com pivo para na proxima chamada ele usar o ponto como novo pivo
    swap(vetor[ponto], vetor[direita]);

    // retorna o ponto
    return ponto;
}

// quicksort em questão:
void quicksort(int esquerda, int direita, Livro vetor[]) {

    if (esquerda >= direita) { // condição de parada pra função
        return;
    }

    // reorganiza alguns elementos e cria um ponto (pivo) para separar o vetor no meio e depois nas chamadas mais a frente, no meio do meio e etc
    int pivo = repartir(esquerda, direita, vetor);

    // cria um subvetor do inicio do vetor até o ponto usado como pivo e reorganiza eles
    quicksort(esquerda, pivo - 1, vetor);

    // cria um subvetor do pivo até o fim do vetor
    quicksort(pivo + 1, direita, vetor);
}

