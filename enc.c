#include <stdio.h>
#include<string.h>


extern int _basic_encrypt(int x);   
extern int _basic_decrypt(int x);
extern int hard_dec(int x);
extern int hard_enc(int x);
extern int _basic_encrypt_char(char x);
extern int _basic_decrypt_char(char x);


int main (int argc, char *argv[])
{
    int total;
    int k;
    int x=0;
    int data;
    int choice;
    char cha;
    char str[100];

    printf("\n");
        printf("                   ***************************************************\n");
        printf("                   *                    NOTE                         *\n");
        printf("                   *               1: Space is Not Allowed           *\n");
        printf("                   *               2: Limit is = 9999                *\n");
        printf("                   ***************************************************\n");
   
    for (;;)
    {
        printf("\n");
        printf("                   ***************************************************\n");
        printf("                   *   press 1: FOR Character Encryption             *\n");
        printf("                   *   press 2: FOR Character Decryption             *\n");
        printf("                   *   press 3: FOR Low Level Integer Encryption     *\n");
        printf("                   *   press 4: FOR Low Level Integer Decryption     *\n");
        printf("                   *   press 5: FOR High Level Integer Decryption    *\n");
        printf("                   *   press 6: FOR High Level Integer Decryption    *\n");
        printf("                   *   press 0: FOR Exit The Programme               *\n");
        printf("                   ***************************************************\n");
        printf("Your Choice: ");
        scanf("%d", &choice); 

        if (choice==1)
        {
            printf(" Enter Data For Encryption\n");
            scanf( "%s", str); 
            int q=strlen(str);
            printf("\nMessage ENCRYPTED = ");
                for (int i = 0; i < q; i++)
                {       
                    printf("%c",_basic_encrypt_char(str[i]) );
                }
                 printf("\nMessage DECRYPTED = ");
           // int q=strlen(str);
                // to decrease presentation time 
                for (int i = 0; i < q; i++)
                {
                    printf("%c",_basic_decrypt_char(_basic_encrypt_char(str[i])) );
                }
            
            
            printf("\n");
        }

        else if (choice==2)
        {
            printf(" Enter Data For Decryption\n");
            scanf( "%s", str); 
            printf("\nMessage DECRYPTED = ");
            int q=strlen(str);
            
                for (int i = 0; i < q; i++)
                {
                    printf("%c",_basic_decrypt_char(str[i]) );
                }
           
            printf("\n");
           
        }

        else if (choice==6)
        {
            printf(" Enter Data For Decryption\n");
            scanf("%d" ,&data);
            total = hard_dec(data);
            printf("\nMessage DECRYPTED = ");
            printf("%d", total);
            
            printf("\n");
        }

        else if (choice==5)
        {
            printf(" Enter Data For Encryption\n");
            scanf("%d" ,&data);
            k = hard_enc(data);
            printf("\nMessage ENCRYPTED = ");
            printf("%d", k);
            total = hard_dec(k);
            printf("\nMessage DECRYPTED = ");
            printf("%d", total);
            printf("\n");
        }

        else if (choice==3)
        {
            printf(" Enter Data For Encryption\n");
            scanf("%d" ,&data);
            k = _basic_encrypt(data);
            printf("\nMessage ENCRYPTED = ");
            printf("%d", k);
            k = _basic_decrypt(k);
            printf("\nMessage DECRYPTED = ");
            printf("%d", k);

            printf("\n");
        }

        else if (choice==4)
        {
            printf(" Enter Data For Decryption\n");
            scanf("%d" ,&data);
            k = _basic_decrypt(data);
            printf("\nMessage DECRYPTED = ");
            printf("%d", k);
            printf("\n");
        }
         
        else if (choice==0)
        {
            break;
        }

        else
        {
            printf("Wrong Input : Try Again \n");
        }
        
    }
    
        
        
        
 return 0;
}