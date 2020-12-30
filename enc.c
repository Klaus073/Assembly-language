#include <stdio.h>

extern int _basic_encrypt(int x);
extern int _basic_decrypt(int x);
//extern int _ass(int x, int y,int v);

int main(int argc, char *argv[]){
    int total;
    int x;
    int data;
    int choice;

    printf(" press 1: FOR Encryption\n");
    printf(" press 2: FOR Decryption\n");
    scanf("%d", &choice); 

    if (choice==1)
    {
        printf(" Enter Data For Encryption\n");
         scanf("%d", &data); 
        total = _basic_encrypt(data);
     printf("%d message Encrypted\n", total);
     
    }
    else if (choice==2)
    {
         printf(" Enter Data For Decryption\n");
          scanf("%d", &data); 
        x = _basic_decrypt(data);
     printf("%d Message decrypted\n ", x);
     
    }
    
    

   

     
    
    return 0;
}