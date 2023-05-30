#include <math.h>

float media_aritmetica(float a, float b, float c) {
    return (a + b + c) / 3;
}

float media_geometrica(float a, float b, float c) {
    return pow(a * b * c, 1.0 / 3.0);
}

float media_harmonica(float a, float b, float c) {
    return 3 / ((1 / a) + (1 / b) + (1 / c));
}
