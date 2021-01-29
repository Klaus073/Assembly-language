#include <stdio.h>

extern int _basic_encrypt(int x);

int main(int argc, char *argv[]){
    int total;

    total = _basic_encrypt(40);
    printf("%d\n", total);
    return 0;
}