#include <stdio.h>
#include <stdlib.h>

extern int _basic_encrypt(int x);



int main(int argc, char *argv[]){
    int total;
    int x;
    int data;
    int choice;
    char d;
   // d=_testys('d');
   // printf("%d message Encrypted\n", _testys('d'));

        printf(" press 1: FOR Integer Encryption\n");
        printf(" press 2: FOR Integer Decryption\n");
        printf(" press 3: FOR Character Encryption\n");
        printf(" press 4: FOR Character Decryption\n");
        scanf("%d", &choice); 

        if (choice==1)
        {
            printf(" Enter Data For Encryption\n");
             scanf("%d", &data); 
            total = _basic_encrypt('d');
         printf("%d message Encrypted\n",  total);
        
        }
        else if (choice==2)
        {
             printf(" Enter Data For Decryption\n");
              scanf("%d", &data); 
            x = _basic_decrypt(data);
         printf("%d Message decrypted\n ", x);
        
         }

           else if (choice==3)
        {
             printf(" Enter Character Data For Encryption\n");
              //scanf("%c", &d); 
           // x = _basic_decrypt(data);
         printf("%d Message enrypted\n ",  _basic_encrypt_char('d'));
        
         }

           else if (choice==4)
        {
             printf(" Enter Character For Decryption\n");
             scanf("%d", &data); 
            //x = _basic_decrypt(data);
         printf("%c Message decrypted\n ",  _basic_decrypt_char(data));
        
         }
    
    return 0;
}