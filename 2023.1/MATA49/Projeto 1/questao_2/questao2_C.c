/*  ALUNO: REYNAN DA SILVA DIAS PAIVA
    N° MATRICULA: 221115751
*/
/* Código em C */

#include <stdio.h>
#include <math.h>

char* format_int = "%d";
char* format_float = "%.2f";
char* format_string = "%s";
char* message_input = "Digite o primeiro número: ";
char* message_input2 = "Digite o segundo número: ";
char* message_input3 = "Digite o terceiro número: ";
char* message_opcao = "Deseja chamar a função aritmetica? (0 - Não, 1 - Sim): ";
char* text_aritmetica = "A média aritmética, é: %.2f\n";
char* text_geometrica = "A média geométrica é: %.2f\n";
char* text_harmonica = "A média harmônica é: %.2f\n";

float lerFloat(const char* message) {
    float value;
    printf("%s", message);
    scanf("%f", &value);
    return value;
}

int lerInt(const char* message) {
    int value;
    printf("%s", message);
    scanf("%d", &value);
    return value;
}

void imprimirFloat(const char* format, float value) {
    printf(format, value);
}

float media_aritmetica(float a, float b, float c) {
    return ((a + b + c) / 3);
}

float media_geometrica(float a, float b, float c) {
    return pow((a * b * c), (1.0 / 3.0));
}

float media_harmonica(float a, float b, float c) {
    return (3.0 / ((1.0 / a) + (1.0 / b) + (1.0 / c)));
}

int main() {
    float a, b, c;
    int chamarSoma;

    a = lerFloat(message_input);
    b = lerFloat(message_input2);
    c = lerFloat(message_input3);
    chamarSoma = lerInt(message_opcao);

    if (chamarSoma) {
        imprimirFloat(text_aritmetica, media_aritmetica(a, b, c));
    }

    imprimirFloat(text_aritmetica, media_aritmetica(a, b, c));
    imprimirFloat(text_geometrica, media_geometrica(a, b, c));
    imprimirFloat(text_harmonica, media_harmonica(a, b, c));

    return 0;
}

